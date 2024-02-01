# Parametri che specificano la cartella dove mintty imposterà la sua home, il file zip e la sua hash precalcolata
param(
   [string]$zipFile="PortableGit-2.39.1-64-bit.zip",
   [string]$sha256Hash="21bc4884d6c9727ac43e257547f3c853d7c99039ba3d1d640a66ceeb0a49869a"
)

# Calcola la hash SHA256 del file zip
$calculatedHash = (Get-FileHash $zipFile -Algorithm SHA256).Hash

# Confronta la hash calcolata con la hash precalcolata
if ($calculatedHash -ne $sha256Hash) {
   Write-Output "La hash calcolata non corrisponde alla hash precalcolata. Il file potrebbe essere stato alterato."
   exit 1
}

# Specifica la cartella di destinazione per l'estrazione
$extractPath = "$env:USERPROFILE\PortableGit"

# Estrae il file ZIP nella cartella di destinazione
Expand-Archive $zipFile -DestinationPath $extractPath -Force

# Specifica la posizione del file
$linkFile = "$extractPath\git-bash.exe"

# Specifica la cartella dove si desidera creare il collegamento
$linkPath = [Environment]::GetFolderPath('Desktop')

# Specifica la cartella dove si desidera impostare la home dei progetti git
$docPath = [Environment]::GetFolderPath('MyDocuments')
$homeGITPath = "$docPath\gitProjects"
New-Item -ItemType Directory -Path $homeGITPath -Force

# Crea un collegamento con un argomento specifico
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$linkPath\git-bash.lnk")
$Shortcut.TargetPath = "$linkFile"
$Shortcut.Arguments = "--cd=$homeGITPath"
$Shortcut.WorkingDirectory = "$extractPath"
$Shortcut.Save()

# Esporta la cartella nelle variabili d'ambiente
$PATH = [Environment]::GetEnvironmentVariable("PATH")
$NEWPATH = $PATH + ';' + $extractPath
[Environment]::SetEnvironmentVariable("PATH", "$NEWPATH")

