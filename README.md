# Make

Make est un outil permettant d'organiser et simplifier la compilation du code.

## Utiliser

### Configuration
1. Déplacer le fichier Makefile dans votre dossier de travail
2. Remplacer les variables DEPS, OBJ, TARGET (et CFLAGS si besoin)

### compilation et génération dex exécutables
Il faut au préalable se déplacer dans le répertoire contenant le fichier Makefile ou utiliser l'option -f
```bash
make
```

### Nettoyer le répertoire des fichiers objet et exécutables
```bash
make clean
```


**Note** : La configuration actuelle implique que les fichiers soient dans le même dossier.

### Exemple
|__recursivite.c : contient des fonctions ayant tableau.h comme dépendance
|__tableau.c : contient la déclaration de fonctions de manipulation de tableaux
|__tableau.h : contient des prototypes de fonctions de manipulation de 

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