import socket
import sys
from io import StringIO
from pwn import *

context(arch='i386', os='linux')
context.log_level = "DEBUG"

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
#r = remote('cs177.seclab.cs.ucsb.edu', 15575)
r = process("./minecraft_hello.bin")

#r.send(asm(shellcraft.sh()))
r.interactive()