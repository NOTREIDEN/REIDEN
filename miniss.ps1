
Write-Host -ForegroundColor Cyan " __  __  _        _        ___  ___"
Write-Host -ForegroundColor Cyan "|  \/  |(_) _ _  (_)      / __|/ __|"
Write-Host -ForegroundColor White "| |\/| || || ' \ | |      \__ \\__ \"
Write-Host -ForegroundColor White "|_|  |_||_||_||_||_|      |___/|___/"
Write-Host
Write-Host -ForegroundColor White "By REIDEN"

$extensions = "*.exe","*.py","*.jar","*.json","*.dll","*.bat","*.pf"
$strings ="D3D10CreateDeviceAndSwapChain","UPX",".UPX2","Click","record_bind_Click","*zM((C/","AimAssist","_maxCps","D$4$0A","seERcSRlijHtpZYapSyhLCqfySXSToSRIXDoUEHjkKQrwcDqPoV","slinkyhook.dll","github.com/slinkygg/loader/update.updateFile","$error_info_injector@Vbad_address","030000008f0e00001200000000000000,Acme,a:b0,b:b1,back:b8,dpdown:h0.4,dpleft:h0.8,dpright:h0.2,dpup:h0.1,leftshoulder:b4,leftstick:b10,lefttrigger:b5,leftx:a0,lefty:a1,rightshoulder:b6,rightstick:b11,righttrigger:b7,rightx:a3,righty:a2,start:b9,x:b2,y:b3,platform:Windows,","@.entropy","D3DCOMPILER_47.dll","D3D10CreateDeviceAndSwapChain","RiH_qQ","COLS=120","Valor:","mouse_event","pyautogui",".amogus","OnClickListener()","autoclicker.class","UwU.class","if(isClicking)",".mousePress","anygrabber","ABCDEFGHIJKLMNOPQRSTUVWXYZ","@SUVWATAUAVAWH","uiAccess='false'","Reach","AutoClicker","[Bind:","key_key.","autoclicker","killaura.killaura","dreamagent","VeraCrypt","makecert","JnativeHook","vape.gg","Aimbot","aimbot","Tracers","tracers","208.","[Bind","LCLICK","RCLICK","fastplace","self destruct"
$path = "C:\Users"


$i = 0
$total = (Get-ChildItem -Path $path -Include $extensions -Recurse -File).Count
Write-Progress -Activity "Expanding subdirectories..." -Status "Analyzing" -PercentComplete 0


$ErrorActionPreference = 'SilentlyContinue'

$results = @()

Get-ChildItem -Path $path -Include $extensions -Recurse -File | 
ForEach-Object { 
    $file = $_
    $content = Get-Content $file.FullName -Raw
    foreach($string in $strings){
        if($content.Contains($string)){
            $result = [PSCustomObject]@{
                FileName = $file.FullName
                StringMatched = $string
            }
            $results += $result
        }
    }
    $i++
    Write-Progress -Activity "Searching for files" -Status "Processing" -PercentComplete (($i/$total)*100)
}


$ErrorActionPreference = 'Continue'


$results | Export-Csv -Path "FullScan.csv" -NoTypeInformation


Write-Host "Results saved in current directory!" -ForegroundColor Green
