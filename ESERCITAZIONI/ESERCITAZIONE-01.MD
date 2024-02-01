# ESERCITAZIONE 01 - Creazione Repository Locale

1) Avvia cmd e imposta la cartella locale da far gestire a git:

> Esegui:
```cmd
mkdir Documenti\GitProjects\Es01
```
> Output:
```cmd
Microsoft Windows [Versione 10.0.19045.2673]
(c) Microsoft Corporation. Tutti i diritti sono riservati.

C:\Users\marco>mkdir Documenti\GitProjects\Es01
```
> Esegui:
```cmd
cd Documenti\GitProjects\Es01
```
> Output:
```cmd
C:\Users\marco>cd Documenti\GitProjects\Es01

C:\Users\marco\Documenti\GitProjects\Es01>
```

2) Avvia git-bash da cmd:

> Esegui:
```cmd
git-bash
```
> Output:
```cmd
C:\Users\marco\Documenti\GitProjects\Es01>git-bash
```

3) Inizializza il repository (creerà la cartella *.git*):
> Esegui:
```bash
git init
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documenti/GitProjects/Es01
$ git init
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint:
hint:   git config --global init.defaultBranch <name>
hint:
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint:
hint:   git branch -m <name>
Initialized empty Git repository in C:/Users/marco/Documents/GitProjects/Es01/.git/
marco@DESKTOP-72VFU3G MINGW64 ~/Documenti/GitProjects/Es01 (master)
$
```
> Controlla:
```bash
ls -las
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documenti/GitProjects/Es01 (master)
$ ls -las
total 4
0 drwxr-xr-x 1 marco 197610 0 Feb 23 23:47 ./
0 drwxr-xr-x 1 marco 197610 0 Feb 23 23:43 ../
4 drwxr-xr-x 1 marco 197610 0 Feb 23 23:47 .git/
```

4) Crea dei file da far tracciare a git:

> Esegui:
```bash
touch foo bar
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documenti/GitProjects/Es01 (master)
$ touch foo bar
```
> Controlla:
```bash
ls -las
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documenti/GitProjects/Es01 (master)
$ ls -las
total 4
0 drwxr-xr-x 1 marco 197610 0 Feb 23 23:50 ./
0 drwxr-xr-x 1 marco 197610 0 Feb 23 23:43 ../
4 drwxr-xr-x 1 marco 197610 0 Feb 23 23:50 .git/
0 -rw-r--r-- 1 marco 197610 0 Feb 23 23:50 bar
0 -rw-r--r-- 1 marco 197610 0 Feb 23 23:50 foo
```

5) Aggiungi i file nell'area staging:

> Esegui:
```bash
git add .
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documenti/GitProjects/Es01 (master)
$ git add .
```

6) Controlla che i file siano tracciati:

> Controlla:
```bash
git status
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documenti/GitProjects/Es01 (master)
$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   bar
        new file:   foo
```

7) Esegui il primo snapshot:

> Esegui:
```bash
git commit -m "initial commit"
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documenti/GitProjects/Es01 (master)
$ git commit -m "initial commit"
[master (root-commit) 65d90da] initial commit
 2 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 bar
 create mode 100644 foo
```

8) Crea un file da non far tracciare a git:

> Esegui:
```bash
touch baz
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documenti/GitProjects/Es01 (master)
$ touch baz
```
> Controlla:
```bash
ls -las
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documenti/GitProjects/Es01 (master)
$ ls -las
total 4
0 drwxr-xr-x 1 marco 197610 0 Feb 23 23:53 ./
0 drwxr-xr-x 1 marco 197610 0 Feb 23 23:43 ../
4 drwxr-xr-x 1 marco 197610 0 Feb 23 23:53 .git/
0 -rw-r--r-- 1 marco 197610 0 Feb 23 23:50 bar
0 -rw-r--r-- 1 marco 197610 0 Feb 23 23:53 baz
0 -rw-r--r-- 1 marco 197610 0 Feb 23 23:50 foo
```

9) Controlla che il primo snapshot sia stato eseguito:

> Controlla:
```bash
git status
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documenti/GitProjects/Es01 (master)
$ git status
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        baz

nothing added to commit but untracked files present (use "git add" to track)
```
> Controlla:
```bash
git log
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documenti/GitProjects/Es01 (master)
$ git log
commit 65d90daee81f668a9a15b9c8aefe7ec5cac81eb8 (HEAD -> master)
Author: matricola-CognomeNome <matricola@studenti.marconiverona.edu.it>
Date:   Thu Feb 23 23:53:04 2023 +0100

    initial commit
```

---

## Approfondimenti

## Commit eseguita per errore

**NB:** nel caso in cui si sia fatta una commit per errore si può tornare indietro con il comando **`git reset HEAD~1`**

1) Simuliamo lo scenario, aggiungendo il file non tracciato *baz*:

> Esegui:
```bash
git add .
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documents/GitProjects/Es01 (master)
$ git add .
```
> Controlla:
```bash
git status
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documents/GitProjects/Es01 (master)
$ git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   baz
```

2) Eseguiamo la commit per errore:

> Esegui:
```bash
git commit -m "second commit"
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documents/GitProjects/Es01 (master)
$ git commit -m "second commit"
[master 23da889] second commit
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 baz
```
> Controlla:
```bash
git log
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documents/GitProjects/Es01 (master)
$ git log
commit 23da88904f124c2dafcd4da3dd83f544a7f9e093 (HEAD -> master)
Author: matricola-CognomeNome <matricola@studenti.marconiverona.edu.it>
Date:   Thu Mar 2 19:09:02 2023 +0100

    second commit

commit 65d90daee81f668a9a15b9c8aefe7ec5cac81eb8
Author: matricola-CognomeNome <matricola@studenti.marconiverona.edu.it>
Date:   Thu Feb 23 23:53:04 2023 +0100

    initial commit
```

3) Ritorniamo allo stato precedente:

> Esegui:
```bash
git reset HEAD~1
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documents/GitProjects/Es01 (master)
$  git reset HEAD~
```
> Controlla:
```bash
git log
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documents/GitProjects/Es01 (master)
$ git log
commit 65d90daee81f668a9a15b9c8aefe7ec5cac81eb8 (HEAD -> master)
Author: matricola-CognomeNome <matricola@studenti.marconiverona.edu.it>
Date:   Thu Feb 23 23:53:04 2023 +0100

    initial commit
```
> Controlla:
```bash
git status
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documents/GitProjects/Es01 (master)
$ git status
On branch master
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        baz

nothing added to commit but untracked files present (use "git add" to track)