param(
    [int]$Interval=$(throw "Missing Parameter: -Interval needs a number (in seconds)"),
    [string]$Nodename=$(throw "Missing Parameter: -Nodename needs a string as nodename")
)

"Interval=$Interval"
"Nodename=$Nodename"

Function StartBeating
{
    python3 ./watcher/server.py NODENAME
    Start-Sleep -s Interval
}

Write-Output "press <Control + C> to terminate"

begin { 
    [Console]::TreatControlCAsInput = $true
}
process {
    do {
        StartBeating
    } while (1)
}
end { 
    [Console]::TreatControlCAsInput = $false
}