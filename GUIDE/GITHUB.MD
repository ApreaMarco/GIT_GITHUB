# Registrazione nuovo account GitHub

1) Apri il sito web di [GitHub](https://github.com/).
2) Fai clic sul pulsante "Sign up" (Registrati) in alto a destra della pagina.
3) Inserisci il tuo indirizzo email e una password sicura.
4) Fai clic sul pulsante "Create account" (Crea account) per continuare.
5) Completa il processo di verifica del tuo account facendo clic sul link di verifica inviato al tuo indirizzo email.
6) Fornisci alcune informazioni aggiuntive per completare la tua registrazione, come il tuo nome, la tua posizione e i tuoi interessi.

[Scribe-How: Registrazione nuovo account GitHub](https://scribehow.com/shared/Creating_a_GitHub_Account__8NlzqoIMTbi2Ji8X4C3nDA)

---

## Approfondimenti

## Modalità d'accesso a Github

### Personal token

Un personal token di GitHub è un token di accesso personale che consente di accedere ai repository e alle risorse dell'API di GitHub senza dover fornire le proprie credenziali di accesso, aumentando il livello di sicurezza del proprio account.

1. Apri il sito web di [GitHub](https://github.com/settings/tokens/new)
2. Scegli un nome al token
3. Scegli la durata del token
4. Seleziona le operazioni che si possono eseguire (le principali sono repo, write, delete)
5. Controlla il token:
> Esegui:
```bash
curl -u ApreaMarco:ghp_{token} https://api.github.com/user
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~
$ curl -u ApreaMarco:ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx https://api.github.com/user
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  1329  100  1329    0     0   3052      0 --:--:-- --:--:-- --:--:--  3069{
  "login": "ApreaMarco",
  "id": 105546344,
  "node_id": "U_kgDOBkqCaA",
  "avatar_url": "https://avatars.githubusercontent.com/u/105546344?v=4",
  "gravatar_id": "",
  "url": "https://api.github.com/users/ApreaMarco",
  "html_url": "https://github.com/ApreaMarco",
  "followers_url": "https://api.github.com/users/ApreaMarco/followers",
  "following_url": "https://api.github.com/users/ApreaMarco/following{/other_user}",
  "gists_url": "https://api.github.com/users/ApreaMarco/gists{/gist_id}",
  "starred_url": "https://api.github.com/users/ApreaMarco/starred{/owner}{/repo}",
  "subscriptions_url": "https://api.github.com/users/ApreaMarco/subscriptions",
  "organizations_url": "https://api.github.com/users/ApreaMarco/orgs",
  "repos_url": "https://api.github.com/users/ApreaMarco/repos",
  "events_url": "https://api.github.com/users/ApreaMarco/events{/privacy}",
  "received_events_url": "https://api.github.com/users/ApreaMarco/received_events",
  "type": "User",
  "site_admin": false,
  "name": "Marco Aprea",
  "company": "ITIS Marconi",
  "blog": "",
  "location": "Verona",
  "email": null,
  "hireable": null,
  "bio": null,
  "twitter_username": null,
  "public_repos": 9,
  "public_gists": 0,
  "followers": 1,
  "following": 0,
  "created_at": "2022-05-14T11:24:26Z",
  "updated_at": "2023-03-03T17:46:54Z"
}
```

[Scribe-How: Genera un nuovo token](https://scribehow.com/shared/Generating_a_Personal_Access_Token_on_GitHub__NIXrJkQgQSGfNqP2cJCAEg)

### Chiavi SSH

GitHub consente di accedere ai propri repository tramite il protocollo SSH (Secure Shell), che offre un maggiore livello di sicurezza rispetto all'utilizzo di una password per l'autenticazione.

Quando si utilizza una chiave SSH su GitHub, si utilizza una coppia di chiavi crittografiche, una pubblica e una privata. La chiave pubblica viene caricata su GitHub, mentre la chiave privata viene mantenuta in locale sul proprio computer. Quando si tenta di accedere a un repository GitHub, il server verifica la chiave pubblica e, se è valida, consente l'accesso.

1) Genera una chiave SSH (creerà due chiavi nella cartella .ssh, una pubblica ed una privata)
> Esegui:
```bash
ssh-keygen -t rsa -b 4096 -C "matricola@studenti.marconiverona.edu.it"
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~
$ ssh-keygen -t rsa -b 4096 -C "marco.aprea@marconiverona.edu.it"
Generating public/private rsa key pair.
Enter file in which to save the key (/c/Users/marco/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /c/Users/marco/.ssh/id_rsa
Your public key has been saved in /c/Users/marco/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:EzFD7JATdJH/dgTfBFD77DrgEKmzBmsWq8ywEujAtNc marco.aprea@marconiverona.edu.it
The key's randomart image is:
+---[RSA 4096]----+
|     .o=Bo  .oo. |
|      +.o+  .  ..|
|       +.. . o.o |
| .      ..+   oo.|
|+ . .   S. o .  o|
|+o . Eo o.. + .. |
|o.o    = o + o  .|
|.. =  = o   . .. |
| .. ++ .      .. |
+----[SHA256]-----+
```
> Controlla:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~
$ ls -las .ssh
total 20
4 drwxr-xr-x 1 marco 197610    0 Mar  3 22:33 ./
8 drwxr-xr-x 1 marco 197610    0 Mar  3 18:34 ../
4 -rw-r--r-- 1 marco 197610 3454 Mar  3 17:16 id_rsa
4 -rw-r--r-- 1 marco 197610  758 Mar  3 17:16 id_rsa.pub
```

2) Copia la chiave generata e salvala su [GitHub](https://github.com/settings/ssh/new)

> Esegui:
```bash
cat ~/.ssh/id_rsa.pub
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~
$ cat ~/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDAS+LD7VeRHv+/PCq+Pn5yf57Im0sXlwIwqL3T7nsWVnAAnPcBMtUqAMzJIOIYVc7o/oBJwWMbkKN3IAFguQ45eTRwEx7fof0cbifSr3CxUdrjsLpbAX1xswwA8CGh4wUExiEo6ou7Uom4bMLEjy14veyjmbLWvsQS8Ohc54JsPlhZjL1WOBNcpmAiTEO5Mxg2VvtThVnch4Jh598XOvitbSTnl0x1ZOFAmWjTkOaKxTk2K38gE75BN7FZ1qWXlqTPDf2UXaggjRIeg/G8xIhEqQyHtzg8xT5I7iQ3AeUusWlbwKmXkI7IlFmIo1r+KSEsYj9J7ePnqehbt4XG1yz+siUocPVqWuAF2Wd6kGfAmZ3+Yanhr8mpoV0FJpoEcMO9QpG/rxoHzXUGnbsrKp/VQThxDSbzLHdwLOZg964XEl8bfl97hDmXZ3VJmTmGUe2QjCefYQqdwhaBBxHuIkIU4mpr0Jm+/qNKD3OWcZMd72ZZFHI4sawcrlPJCqJQCehu+kfvYF775nW1MofWQeQC0nyhq7atXx6UfY0ZMq3HLueA66f6hlX4G+elcXwlJE9FUEcikd7YPr+XCFdxHMqkFr9z9jBuTx/BDDO2bN5epZ6xnXR5iTCuAAoCYLhqPOOcdWj7u1/Uov4KA8ugvowqPmUzQRG9kMD6Tg1zsnfSbQ== marco.aprea@marconiverona.edu.it
```
> Controlla:
```bash
ssh -T git@github.com
```
> Output:
```bash 
marco@DESKTOP-72VFU3G MINGW64 ~
$ ssh -T git@github.com
The authenticity of host 'github.com (140.82.121.3)' can't be established.
ED25519 key fingerprint is SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'github.com' (ED25519) to the list of known hosts.
Hi ApreaMarco! You've successfully authenticated, but GitHub does not provide shell access.
```

3) Avvia il servizio ssh-agent e collega la tua chiave privata con l'identità aggiunta

> Esegui:
```bash
eval `ssh-agent -s`
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~
$ eval `ssh-agent -s`
Agent pid 2603
```
> Esegui:
```bash
ssh-add ~/.ssh/id_rsa
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~
$ ssh-add ~/.ssh/id_rsa
Enter passphrase for /c/Users/marco/.ssh/id_rsa:
Identity added: /c/Users/marco/.ssh/id_rsa (marco.aprea@marconiverona.edu.it)
```
> Controlla:
```bash
ssh -T git@github.com
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~
$ ssh -T git@github.com
Hi ApreaMarco! You've successfully authenticated, but GitHub does not provide shell access.
```

### Chiavi PGP

Le chiavi GPG (GNU Privacy Guard) sono utilizzate per crittografare e decrittografare i dati, nonché per firmare digitalmente le informazioni. Su GitHub, le chiavi GPG possono essere utilizzate per verificare l'autenticità delle modifiche apportate ai repository, nonché per confermare la propria identità quando si effettuano operazioni come la creazione di release o la firma dei commit.

marco@DESKTOP-72VFU3G MINGW64 ~
$ gpg --full-generate-key
gpg (GnuPG) 2.2.29-unknown; Copyright (C) 2021 Free Software Foundation, Inc.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

gpg: keybox '/c/Users/marco/.gnupg/pubring.kbx' created
Please select what kind of key you want:
   (1) RSA and RSA (default)
   (2) DSA and Elgamal
   (3) DSA (sign only)
   (4) RSA (sign only)
  (14) Existing key from card
Your selection? 1
RSA keys may be between 1024 and 4096 bits long.
What keysize do you want? (3072) 4096
Requested keysize is 4096 bits
Please specify how long the key should be valid.
         0 = key does not expire
      <n>  = key expires in n days
      <n>w = key expires in n weeks
      <n>m = key expires in n months
      <n>y = key expires in n years
Key is valid for? (0) 0
Key does not expire at all
Is this correct? (y/N) y

GnuPG needs to construct a user ID to identify your key.

Real name: ApreaMarco
Email address: marco.aprea@marconiverona.edu.it
Comment:
You selected this USER-ID:
    "ApreaMarco <marco.aprea@marconiverona.edu.it>"

Change (N)ame, (C)omment, (E)mail or (O)kay/(Q)uit? o
We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
We need to generate a lot of random bytes. It is a good idea to perform
some other action (type on the keyboard, move the mouse, utilize the
disks) during the prime generation; this gives the random number
generator a better chance to gain enough entropy.
gpg: /c/Users/marco/.gnupg/trustdb.gpg: trustdb created
gpg: key AB47D5908C00E184 marked as ultimately trusted
gpg: directory '/c/Users/marco/.gnupg/openpgp-revocs.d' created
gpg: revocation certificate stored as '/c/Users/marco/.gnupg/openpgp-revocs.d/0C373DE43A0E0F512C05E1D5AB47D5908C00E184.rev'
public and secret key created and signed.

pub   rsa4096 2023-03-03 [SC]
      0C373DE43A0E0F512C05E1D5AB47D5908C00E184
uid                      ApreaMarco <marco.aprea@marconiverona.edu.it>
sub   rsa4096 2023-03-03 [E]

## Configurazione credential-manager

marco@DESKTOP-72VFU3G MINGW64 ~/Documents/GitProjects
$ git config --global credential.credentialStore gpg
pass init
gpg --gen-key

marco@DESKTOP-72VFU3G MINGW64 ~/Documents/GitProjects
$ git credential-manager configure
Configuring component 'Git Credential Manager'...
Configuring component 'Azure Repos provider'...

marco@DESKTOP-72VFU3G MINGW64 ~/Documents/GitProjects
$ git credential-manager store

marco@DESKTOP-72VFU3G MINGW64 ~/Documents/GitProjects
$ git config --global credential.https://github.com/.useHttpPath true

git config --global credential.credentialStore cache