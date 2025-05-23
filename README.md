1.	Cd “dosya yolu” 
2.	Docker imaj oluşturmak istersen ; 
docker build –t imajadı
3.	Containeri çalıştır.
docker run imajadı

Java dosyasının konsol çıktısını göreceksin eğer öyle olduysa başarıyla oluşturdun demektir.

4.Docker compose için 
docker-compose up

Daha sonra var olan dosyalarını bir github reposu içine at 
4.	Jenkinse gel bir pipeline oluştur. 
Ayarlar;
Definition : Pipeline script from SCM
SCM:Git
Repository url: repo adresin
Branch :*/main 
Artık pipeline oluştu manuel olarak build et çalışıyorsa devam 

Veritabanı bağlantısı için java yaml ve dockerfile dosyalarının içini düzenle . Klasör içerisine jar dosyasını eklemyi unutma 
Docker-compose build 
Docker-compose up
Veritabanına başarıyla bağlandı derse bağlanmıştır. 


Docker compose için uzantı .yml olmalı
Docker dosya adı "Dockerfile"
nginx için nginx.conf
