#Requires -Version 5.1

<#
.NOTES
    Автор: Vyacheslav Yanin
    Версия: 1.0.0
#>

$ping = Test-Connection 8.8.8.8

$sum = 0
foreach ($p in $ping.Latency) {
    $sum += $p
}

$avgPing = $sum / $ping.Length

"Average ping=$avgPing"