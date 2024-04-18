"""
`python3 -m http.server $port` does not support `host` binding and keeps prompting in MacOS
so use `python3 http_server.py -b localhost` instead
"""
import argparse
import http.server
import socketserver
import sys, os

def main():
    parser = argparse.ArgumentParser(description='Simple HTTP Server')
    parser.add_argument('port', nargs='?', type=int, default=8000,
                        help='port number (default: 8000)')
    parser.add_argument('--bind', '-b', default='',
                        help='specify alternate bind address [default: all interfaces]')
    parser.add_argument('--directory', '-d', default=os.getcwd(),
                        help='directory to serve (default: current directory)')
    args = parser.parse_args()

    Handler = http.server.SimpleHTTPRequestHandler

    with socketserver.TCPServer((args.bind, args.port), Handler) as httpd:
        print("Serving at port", args.port)
        httpd.serve_forever()

if __name__ == '__main__':
    main()
