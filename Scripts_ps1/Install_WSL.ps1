# ==============================================================================
# WSL 2 Installation Script with Ubuntu (default) and Debian
# ==============================================================================

param(
  [string[]]$Distros = @('Ubuntu','Debian'),      # Change this to install other distro
  [string]$DefaultDistro = 'Ubuntu'
)

wsl --update
wsl --set-default-version 2

foreach ($d in $Distros) {
  wsl --install -d $d
}

wsl --set-default $DefaultDistro
