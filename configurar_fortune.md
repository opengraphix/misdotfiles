# Configurar fortune con mis frases.

* Instalar fortune

```
brew install fortune
```

* Copiar el archivo de frases:

```
cp harvey /usr/local/Cellar/fortune/9708/share/games/fortunes/
```

* Generar el binario de las frases:

```
cd /usr/local/Cellar/fortune/9708/share/games/fortunes/
strfile harvey harvey.dat
```

* Probar

```
fortune harvey
```
