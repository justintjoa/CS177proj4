import socket
import sys
from io import StringIO



sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)



# Connect the socket to the port where the server is listening
server_address = ('cs177.seclab.cs.ucsb.edu', 28412)
sock.connect(server_address)