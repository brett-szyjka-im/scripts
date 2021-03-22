# set-poshprompt emodipt
set-alias -name list -value 'get-childitem'
set-alias -name cake -value 'powershell build.ps1'
$WindowsTerminalConfigPath = "C:/Users/brszyjk/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json"
# don't re-prompt for credential
if (!$ExtendHealthCredential) { $ExtendHealthCredential = get-credential extendhealth\brszyjk }

function edit-profile {
  & subl $profile
}

function edit-terminalconfig {
  & subl $WindowsTerminalConfigPath
}

function update-powershell {
  cd -path c:\temp
  invoke-webrequest 'https://aka.ms/install-powershell.ps1' -outfile install.ps1
  & .\install.ps1 -useMSI -enablePSRemoting -quiet
}

function reload-profile {
  & $profile
}

function get-winver {
  write-output [System.Environment]::OSVersion.Version
}

function profile-functions {
  write-output 'edit-profile'
  write-output 'edit-terminalconfig'
  write-output 'update-powershell'
  write-output 'reload-profile'
  write-output 'get-winver'
}
