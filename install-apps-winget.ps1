#powershell script for clean windows 10/11 machines

#install 3rd party apps
$apps=@(
    'Google.Chrome'
    'Zoom.Zoom'
    'Agilebits.1Password'
    'SparkLabs.Viscosity'
)

echo "installing apps..."
foreach ($app in $apps) {
    winget install $app --accept-source-agreements --silent
    if ($? -eq 'True') {
        (echo "$app installed successfully")} 
    else {
        (echo "$app install failed")}
    }

<# TODO remove default Windows apps for Lenovo X1C
#>

<# TODO install all Windows updates
echo "installing all Windows updates..."
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Install-Module -Name PSWindowsUpdate -Force
Get-Package -Name PSWindowsUpdate
Get-command -module PSWindowsUpdate
Get-WindowsUpdate -AcceptAll -Install -AutoReboot
#>
