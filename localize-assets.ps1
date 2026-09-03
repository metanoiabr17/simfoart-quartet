$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$img = Join-Path $root "assets\images"
New-Item -ItemType Directory -Force -Path $img | Out-Null
Write-Host "Descarc imaginile originale de pe CDN-ul Webnode..."
Invoke-WebRequest -Uri 'https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000178-9dd239dd25/Logo%20simfo%20alb.png?ph=2c5960c1fd' -OutFile (Join-Path $img 'logo.png')
Invoke-WebRequest -Uri 'https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000153-8c1fa8c1fb/image-crop-200000140-9.jpeg?ph=2c5960c1fd' -OutFile (Join-Path $img 'hero.jpeg')
Invoke-WebRequest -Uri 'https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000149-a301ea3020/image-crop-200000130.jpeg?ph=2c5960c1fd' -OutFile (Join-Path $img 'concert-bw.jpeg')
Invoke-WebRequest -Uri 'https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000127-2ea662ea67/IMG_5437-3.jpeg?ph=2c5960c1fd' -OutFile (Join-Path $img 'group.jpeg')
Invoke-WebRequest -Uri 'https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000131-dde07dde0a/DSC_0015-8.jpeg?ph=2c5960c1fd' -OutFile (Join-Path $img 'service.jpeg')
Invoke-WebRequest -Uri 'https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000165-68b0668b09/WhatsApp%20Image%202024-11-26%20at%2018.58.16_13e646a0.jpeg?ph=2c5960c1fd' -OutFile (Join-Path $img 'evelina.jpeg')
Invoke-WebRequest -Uri 'https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000167-33d5733d59/IMG_5509-3.jpeg?ph=2c5960c1fd' -OutFile (Join-Path $img 'luiza.jpeg')
Invoke-WebRequest -Uri 'https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000186-0d0590d05a/IMG_5527-0.jpeg?ph=2c5960c1fd' -OutFile (Join-Path $img 'mircea.jpeg')
Invoke-WebRequest -Uri 'https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000026-58bcf58bd1/IMG_5517.jpeg?ph=2c5960c1fd' -OutFile (Join-Path $img 'stefan.jpeg')
$files = Get-ChildItem -Path $root -Filter *.html -Recurse
foreach ($f in $files) {
$c = Get-Content $f.FullName -Raw
$c = $c.Replace("https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000178-9dd239dd25/Logo%20simfo%20alb.png?ph=2c5960c1fd", '/assets/images/logo.png')
$c = $c.Replace("https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000153-8c1fa8c1fb/image-crop-200000140-9.jpeg?ph=2c5960c1fd", '/assets/images/hero.jpeg')
$c = $c.Replace("https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000149-a301ea3020/image-crop-200000130.jpeg?ph=2c5960c1fd", '/assets/images/concert-bw.jpeg')
$c = $c.Replace("https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000127-2ea662ea67/IMG_5437-3.jpeg?ph=2c5960c1fd", '/assets/images/group.jpeg')
$c = $c.Replace("https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000131-dde07dde0a/DSC_0015-8.jpeg?ph=2c5960c1fd", '/assets/images/service.jpeg')
$c = $c.Replace("https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000165-68b0668b09/WhatsApp%20Image%202024-11-26%20at%2018.58.16_13e646a0.jpeg?ph=2c5960c1fd", '/assets/images/evelina.jpeg')
$c = $c.Replace("https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000167-33d5733d59/IMG_5509-3.jpeg?ph=2c5960c1fd", '/assets/images/luiza.jpeg')
$c = $c.Replace("https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000186-0d0590d05a/IMG_5527-0.jpeg?ph=2c5960c1fd", '/assets/images/mircea.jpeg')
$c = $c.Replace("https://2c5960c1fd.cbaul-cdnwnd.com/763ec50338074676e6c811aedd105ced/200000026-58bcf58bd1/IMG_5517.jpeg?ph=2c5960c1fd", '/assets/images/stefan.jpeg')
Set-Content -Path $f.FullName -Value $c -Encoding UTF8
}
Write-Host "Gata. Imaginile sunt acum locale in assets\images."
Pause