#!/usr/bin/env python3
"""
Servidor HTTP con soporte para HTTP Range Requests (necesario para video streaming)
Esto permite que el slider del video funcione correctamente.
"""

import os
import sys
from http.server import HTTPServer, SimpleHTTPRequestHandler
from pathlib import Path

class RangeHTTPRequestHandler(SimpleHTTPRequestHandler):
    """Manejador HTTP con soporte para Range Requests"""
    
    def end_headers(self):
        # Permitir CORS si es necesario
        self.send_header('Accept-Ranges', 'bytes')
        self.send_header('Access-Control-Allow-Origin', '*')
        super().end_headers()

    def do_GET(self):
        """Manejar GET requests con soporte para rangos"""
        
        # Obtener la ruta del archivo
        path = self.translate_path(self.path)
        
        if os.path.isfile(path):
            # Obtener tamaño del archivo
            file_size = os.path.getsize(path)
            
            # Verificar si hay header Range
            if 'Range' in self.headers:
                self.send_response(206)  # Partial Content
                range_header = self.headers['Range']
                
                try:
                    # Parsear el header Range (ej: bytes=0-1023)
                    if range_header.startswith('bytes='):
                        range_str = range_header[6:]
                        if '-' in range_str:
                            start, end = range_str.split('-')
                            start = int(start) if start else 0
                            end = int(end) if end else file_size - 1
                            
                            # Validar rango
                            if start >= file_size:
                                start = file_size - 1
                            if end >= file_size:
                                end = file_size - 1
                            if start > end:
                                start, end = end, start
                            
                            # Headers para respuesta parcial
                            self.send_header('Content-Range', f'bytes {start}-{end}/{file_size}')
                            self.send_header('Content-Type', self.guess_type(path)[0] or 'application/octet-stream')
                            self.send_header('Content-Length', str(end - start + 1))
                            self.send_header('Accept-Ranges', 'bytes')
                            self.end_headers()
                            
                            # Enviar el contenido del rango
                            with open(path, 'rb') as f:
                                f.seek(start)
                                self.wfile.write(f.read(end - start + 1))
                            return
                except (ValueError, IndexError):
                    pass
        
        # Si no es un range request válido, proceder normalmente
        super().do_GET()

def run_server(port=8000):
    """Ejecutar el servidor en el puerto especificado"""
    handler = RangeHTTPRequestHandler
    server_address = ('', port)
    httpd = HTTPServer(server_address, handler)
    
    print(f"🚀 Servidor HTTP corriendo en puerto {port}")
    print(f"📍 URL: http://localhost:{port}/dashboard3/resumen_audiovisual.html")
    print(f"⏹️  Presiona Ctrl+C para detener el servidor\n")
    
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\n✅ Servidor detenido")
        sys.exit(0)

if __name__ == '__main__':
    # Cambiar al directorio del Dashboard
    dashboard_dir = Path(__file__).parent
    os.chdir(dashboard_dir)
    
    port = int(sys.argv[1]) if len(sys.argv) > 1 else 8000
    run_server(port)
