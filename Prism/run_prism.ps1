param(
    [switch]$Tray,
    [switch]$Project,
    [switch]$Setup
)
Push-Location $PSScriptRoot
function StartTray
{
    start-process "Python37\Prism Tray.exe" "Scripts\PrismTray.py"
}

function StartProject
{
    start-process "Python37\python.exe" "Scripts\PrismCore.py","standalone"
}

function StartIntergrationSetup
{
    start-process "Python37\pythonw.exe" "Scripts\PrismInstaller.py"
}

if ($Tray) {StartTray}
if ($Project) {StartProject}
if ($Setup) {StartIntergrationSetup}

Pop-Location