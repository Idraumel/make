# Make

Make est un outil permettant d'organiser et simplifier la compilation du code.

## Utilisation

### 1 - Configuration

0. Installer make via ```sudo apt install make```
1. Déplacer le fichier Makefile dans votre dossier de travail
2. Remplacer les variables DEPS, OBJ, TARGET (et CFLAGS si besoin)

### 2 - Compilation et génération des exécutables
Il faut au préalable se déplacer dans le répertoire contenant le fichier Makefile ou utiliser l'option -f
```bash
make
```
Il suffit alors de lancer l'exécutable généré.

### 3 - Nettoyer le répertoire des fichiers objet et exécutables
```bash
make clean
```


**Note** : La configuration actuelle implique que les fichiers soient dans le même dossier.

### 4 - Exemple
```
|__recursivite.c : contient des fonctions ayant tableau.h comme dépendance
|__tableau.c : contient la déclaration de fonctions de manipulation de tableaux
|__tableau.h : contient des prototypes de fonctions de manipulation de 
```

La configuration associée du Makefile serait alors :
```
CC=gcc
CFLAGS=-W -Wall -Wextra -Werror -O0
DEPS=tableau.h
OBJ=recursivite.o tableau.o
TARGET=recursivite

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

all: $(OBJ)
	$(CC) -o $(TARGET) $^

clean:
	rm -f $(OBJ) $(TARGET)
```