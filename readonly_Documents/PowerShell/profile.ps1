####################
#      Theme       #
####################

oh-my-posh init pwsh --config "~/.config/oh-my-posh/config.omp.json" | Invoke-Expression

####################
#      Alias       #
####################

function c {
    code $args
}

function n {
    nvim $args
}

function ls-helper {
    lsd $args
}
Set-Alias -Name ls -Value ls-helper -Option AllScope
function LL-Helper {
    lsd -la
}
Set-Alias -Name "ll" -Value LL-Helper

function dotdot {
    cd ..
}
function dotdotdot {
    cd ../..
}
function dotdotdotdot {
    cd ../../..
}
function dotdotdotdotdot {
    cd ../../../..
}
Set-Alias -Name ".." -Value dotdot
Set-Alias -Name "..." -Value dotdotdot
Set-Alias -Name "...." -Value dotdotdotdot
Set-Alias -Name "....." -Value dotdotdotdotdot

Set-Alias -Name "open" -Value explorer

Set-Alias -Name "l" -Value "lazygit"

Set-Alias -Name "cl" -Value Clear-Host

function uutils-cp {
    coreutils cp $args
}
function uutils-df {
    coreutils df $args
}
function uutils-du {
    coreutils du $args
}
function uutils-head {
    coreutils head $args
}
function uutils-rm {
    coreutils rm $args
}
function uutils-tail {
    coreutils tail $args
}
function uutils-touch {
    coreutils touch $args
}
Set-Alias -Name cp -Value uutils-cp -Option AllScope
Set-Alias -Name df -Value uutils-df -Option AllScope
Set-Alias -Name du -Value uutils-du -Option AllScope
Set-Alias -Name head -Value uutils-head -Option AllScope
Set-Alias -Name rm -Value uutils-rm -Option AllScope
Set-Alias -Name tail -Value uutils-tail -Option AllScope
Set-Alias -Name touch -Value uutils-touch -Option AllScope

####################
#   Applications   #
####################

Invoke-Expression (& { (zoxide init powershell | Out-String) })

fnm env --use-on-cd --shell powershell | Out-String | Invoke-Expression

