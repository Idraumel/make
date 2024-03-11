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