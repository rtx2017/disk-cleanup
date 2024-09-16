$targetFolder = "C:\SILINECEK"  # Disk dolduğunda silinmesi istenilen hedef klasor 
$freeSpaceLimitGB = 50  # 50GB Limit
$targetDate = (Get-Date).AddDays(-2)  # 2 gun oncesi tarih

# C diskindeki bos alani kontrol et
$drive = Get-PSDrive -Name C
$freeSpaceGB = $drive.Free / 1GB

# eger bos alan 50 GB'in altindaysa, 2 gun oncesinden eski dosyalari sil
if ($freeSpaceGB -lt $freeSpaceLimitGB) {
    Get-ChildItem -Path $targetFolder -Recurse -Force | Where-Object {
        $_.LastWriteTime -lt $targetDate
    } | Remove-Item -Force
    Write-Host "eski dosyalar basariyla silindi."
} else {
    Write-Host "Bos alan yeterli, silme islemi yapılmadı."
}
