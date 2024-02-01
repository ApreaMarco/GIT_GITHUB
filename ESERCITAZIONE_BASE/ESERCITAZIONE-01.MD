Prerequisiti:
1. Installare Git
2. Configurazione iniziale
3. Creazione account GitHub

Parte 1:

```bash
mkdir ES01_B
cd ES01_B
git init
touch foo
git status
git commit -m "prima commit"
git log
```
Cosa è successo?
```bash
git add .
git commit -m "prima commit"
git log
```
____
Parte 2:

Crea un nuovo token
>https://github.com/settings/tokens/new

Crea un nuovo repository
>https://github.com/new

Portiamo su
```bash
git remote add origin https://github.com/ApreaMarco/Es01_b.git
git remote -v
git push -u origin master
```