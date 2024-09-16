Disk Cleanup Script
Bu PowerShell script’i, C diskindeki boş alan belirli bir sınırın altına düştüğünde, belirtilen klasördeki (örneğin C:\SILINECEK) iki günden eski dosyaları temizlemek için kullanılır.

Kullanım

Script Dosyası:
diskSilme.ps1: PowerShell script'i.
Script, C diskinde boş alan 50 GB'nin altına düştüğünde çalışır ve 2 gün öncesinden eski olan dosyaları siler.

Otomatik Çalıştırma İçin .bat Dosyası:

diskSilme.bat: PowerShell script'inin otomatik olarak çalıştırılması için hazırlanmış .bat dosyasıdır.
.bat dosyası, diskSilme.ps1 dosyasının yolunu içerir ve bu script'in otomatik çalışmasını sağlar.

Otomatik Çalıştırma Ayarı
Windows Görev Zamanlayıcı kullanarak script'in otomatik çalışmasını sağlayabilirsin:
Görev Zamanlayıcı'yı Aç:
Windows arama çubuğuna "Görev Zamanlayıcı" yaz ve aç.
Yeni Görev Oluştur:
Yeni bir görev ekle ve tetikleyici olarak istediğin zaman aralığını belirle (örneğin, günlük olarak).
Eylem Olarak diskSilme.bat Dosyasını Seç:
Eylem kısmına diskSilme.bat dosyasının yolunu ekle.

Gereksinimler
Windows PowerShell
Windows Görev Zamanlayıcı
