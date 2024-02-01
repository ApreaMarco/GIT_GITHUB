Prerequisiti:
1. Installare Git
2. Configurazione iniziale
3. Creazione account GitHub

Parte 1:

```bash
mkdir ES02_B
cd ES02_B
git init
touch foo bar
add .
git status
git commit -m "prima commit"
git log
git rm –cached foo
git status
git commit -m "seconda commit"
git log
```
Cosa è successo?

____
Parte 2:

Crea un nuovo repository
>https://github.com/new

Portiamo su
```bash
git remote add origin https://github.com/ApreaMarco/Es02_b.git
git remote -v
git push -u origin master
```