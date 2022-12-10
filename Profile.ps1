[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding


$omp_config = Join-Path $PSScriptRoot ".\powerlevel10k_rainbow_nord.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
