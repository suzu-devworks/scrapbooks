#!/usr/bin/env powershell

Param([Int]$COUNT=12)
$PASSWORD_LEN = $COUNT

Add-type -AssemblyName System.Web
# other chars is "!#$%&()*+-./:;=>?@[]^_{|}""
[System.Web.Security.Membership]::GeneratePassword($PASSWORD_LEN, 0)
#[System.Text.RegularExpressions.Regex]::Replace(
#    [System.Web.Security.Membership]::GeneratePassword($PASSWORD_LEN*2, 0),
#    "[\!\#\$\%\&\(\)\*\+\-\.\/\:\;\=\>\?\@\[\]\^_\{\|\}]",
#    "").Substring(0, $PASSWORD_LEN)
