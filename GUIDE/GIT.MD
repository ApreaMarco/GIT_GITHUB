# Guida Git

## Installazione Portable Git
1) Scarica il file:

[PortableGit](https://github.com/git-for-windows/git/releases/download/v2.39.1.windows.1/PortableGit-2.39.1-64-bit.7z.exe)

2) Estrai nella cartella:

```cmd
C:\Users\{matricola}\PortableGit
```

3) Esporta la variabile d'ambiente da cmd (ricorda di controllare che la variabile di sistema sia stata esportata):

> Esegui:
```cmd
setX Path "%Path%;C:\Users\{matricola}\PortableGit"
```
> Output:
```cmd
Microsoft Windows [Versione 10.0.19045.2673]
(c) Microsoft Corporation. Tutti i diritti sono riservati.

C:\Users\marco>setX Path "%Path%;C:\Users\marco\PortableGit"

OPERAZIONE RIUSCITA: valore specificato salvato.
```
> Controlla:
```cmd
REG QUERY HKCU\Environment /v PATH
```
> Output:
```cmd
C:\Users\marco>REG QUERY HKCU\Environment /v PATH

HKEY_CURRENT_USER\Environment
    PATH    REG_SZ    C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Windows\System32\OpenSSH\;C:\Users\marco\AppData\Local\Microsoft\WindowsApps;C:\Users\marco\PortableGit
```

5) Avvia git-bash da cmd:

> Esegui:
```cmd
git-bash
```
> Output:
```cmd
C:\Users\marco>git-bash
```

## Configurazione dei parametri globali

1) Configura i parametri globali di git (solo in fase di installazione):

> Esegui:
```bash
git config --global user.name "matricola-CognomeNome"
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~
$ git config --global user.name "ApreaMarco"
```
> Esegui:
```bash
git config --global user.email "matricola@studenti.marconiverona.edu.it"
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~
$ git config --global user.email "marco.aprea@marconiverona.edu.it"
```

2) Controlla che i parametri globali siano stati creati (creera un file *.gitconfig*):

> Controlla:
```bash
git config --global --list
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~
$ git config --list
core.symlinks=false
core.autocrlf=true
core.fscache=true
color.interactive=true
color.ui=auto
help.format=html
diff.astextplain.textconv=astextplain
rebase.autosquash=true
filter.lfs.clean=git-lfs clean -- %f
filter.lfs.smudge=git-lfs smudge -- %f
filter.lfs.process=git-lfs filter-process
filter.lfs.required=true
credential.helper=helper-selector
user.name=ApreaMarco
user.email=marco.aprea@marconiverona.edu.it
```
> Controlla:
```bash
ls -las .*
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~
$ ls -las .*
1 -rw-r--r-- 1 marco 197610  3 Feb 23 23:18 .bash_history
1 -rw-r--r-- 1 marco 197610 86 Feb 23 23:24 .gitconfig
1 -rw-r--r-- 1 marco 197610 20 Feb 23 23:27 .lesshst
```

---

## Approfondimenti

**NB:**

- In *`Windows`* le path hanno una sintassi del tipo:

> {drive:}/{literal<sub>1</sub>}/.../{literal<sub>n</sub>}

il separatore fra un livello e l'altro è il carattere **/**

- In *`Posix`* le path hanno una sintassi del tipo:

> {root}\\{literal<sub>1</sub>}\\...\\{literal<sub>n</sub>}

dove la root è il carattere **\\** ed i separatori fra un livello e l'altro è sempre il carattere **\\**
