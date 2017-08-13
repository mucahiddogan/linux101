# VI Text Editor

vi ile vim tamamen aynı program değil.

Editör de visual ve insert olmak üzere iki mod vardır  
visual mod da bazı özel komutlar girilerek istenilen şeyleri kısa bir şekilde  
yapmamızı sağlar. Bu kısayolların bazıları aşağıda tanımlanmıştır.  
İnsert mod ise editöre yazı yazmamızı sağlayan yerdir.  

Kısayolları kullanmak için visual moda geçmek lazım...  

v = visual mod = kullanım yeri  
i = insert mod = yazılan kısım  

`i` insert moda geçmeyi sağlar bulunduğu karakterin solunda insert moda geçip yazı yazılmasını sağlar  
`a` insert mod a geçiş komutu bulunduğu karakterin sağında başlar  
`Esc` insert mode dan visual moda geçerken kullanılır  

h j k l yönlendirme tuşları (ok tusları)  

.....k.....
  
h..........l
  
.....j.....  
k yukarı, h sol, l sağ, j aşaüı  


`shift + i`  
    satırın en başından insert moda geçer    
`shift + a`   
    satırın en sonunda insert moda girer  
`o`    
    bulunduğu satırın bir alt satırında insert mod a geçer bir satır bırakır
`shift + o`
    satırın bir üstünden insert mod a geçer  
`r`  
    bulunduğu karakteri başka bi şeyle değiştirmeyi sağlar  
`shift + r`  
    üzerinden geçilen tüm karakterlerin üzerinden geçip değiştirmeye başlar  
`s`  
    bulunduğu karakteri silip insert mod a geçer  
`shift + s`  
    bulunduğu satiri tamamen silip insert moduna geçer  
`shift + c`  
    bulunduğu yerden sağ tarafı siler ve insert moda geçer  
`c`  
    argüman bekler sagındakı kacıncı karaktere kadar silmeye yarar  


-------------------------------------------------------------------------------


`x`  
    bulundugun karakteri silmeye yarar  
    (tek seferli komut tek komut argumanlı komut baska bır komut bekler)  
`e`  
    bir sonraki kelimenın sonuna  
`shift + e`  
    bosluk sonraki kelimenin sonuna  
`w`  
    bir sonraki kelimenin başına gider  
`shift + w`  
    bosluk sonrasındaki kelimenin başına gider  
`b`  
    harfi bir önceki kelimenin ilk harfine doner  
`$`  
    satır sonuna gider  
`^`  
    satır başına gider  
`0`  
    line başına gider  
`shift + g`  
    dosyanın sonuna gider  
`gg`  
    arguman alan komut satır başına gider  


`5 G` 
    5. satıra gider  
`u`  
    undo yapılmış değişiklikleri geri alır  
  
`d`  
    delete komutu  

----------------------------------------------------------------------------------

örnegin `c3e` bulunduğu yerden 3 bosluk sonrasına kadar silip inserte iner  
or `c5w` 5 ozel karakter sornasına kadar silip inserte iner  
`c shift g`  bulunduğun satırın altını tamamen siler  
`d shift g` de aynısnı yapar inserte girmez  
`f` sonraki istediğimiz karaktere gitmemizi sağlar  
`shift f` soldaki ilk istenen karaktere gider




`ctrl r` geri alınan şeyi ileri alır  
`v` seçim harfi karakter kopyalarken seçmeye yarar  
`%` bir blok başlattığımızda ilk ve son karakterine gitmeye yarar  
`ctrl v` ile bir bloktaki şeyleri üst üste olarak seçmeye yarar  



`ctrl v` ile tüm satır başları seçilir daha sonra `shift ı` ile satır başından  
inserte düşülür daha sonrasında `#` yazılıp iki kez esc ye basınca seçilen satırlar istenilen şekilde değişir  
`ı` yorum şekline donusturu otomatık  
`y` kopyalamaya yarar  
`dd` olduğun satırın tamamını siler  
`p` paste  
`shift p` bir üst satıra yapıştırır  
`d` ile sildikten sonra keser `p` ile yeniden yapıştırır  
 



**Arama Yapmak İçin**  

`/` bulunduğun yerin altındaki yerde arama yapar  
`n` ile sıradaki diye gider  
`shift n` ile arama yönünün tersine doğru gitmeyi sağlar  
`?` ile bulunduğun yerin üstünde arama yapar  
`n` işleyişi tam tersi  



**Komutlar**  

Komutlar `:` girilerek editöre verilen parametreler şeklindedir.  

`:` komut bekler  
`:set number` line sayılarını bastırır  
`:set nonumber` sayıları kaldırır  
`:w` kaydetmeye yarar  
`:vsp asd.txt` vim in yanına yeni bir ekran da kod yazmaya yarar aynı zamanda 2 sekme gibi  
`:split asd.txt` altında yeni bir sekme açmaya yarar  
`ctrl ww` ile pencereler arasında geçiş yapmaya yarar  
`:wq` kaydedip çıkar  
`:q!` kaydetmeden ÇIKAR  
`:!` ile direk terminal komutu çalıştırıp daha sonrasında editorden tekrar devam etmeye yarar  
`/etc/vimrc ~/.vimrc`  
    vim konfigurasyonlarını yapmaya yarar  



  **Karakter Değiştirme**   
`:1,$ s/d/1` seçilen karakter istenilen karakterle değiştirilir d yerine 1 yazılır  
`:1,$ s/.*/1` tüm tekrar eden karakterleri 1 ile değiştirir  
`:1,$ s/asd/1` sadece ilk denk gelen asd leri 1 ile değiştirir  
