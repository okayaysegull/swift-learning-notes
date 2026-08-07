import UIKit

// MARK: - WHILE DÖNGÜSÜ

/*
 while, belirli bir koşul true olduğu sürece
 aynı kodu tekrar çalıştırır.

 Koşul false olduğunda döngü sona erer.

 Yapısı:

 while koşul {
     Tekrarlanacak kod
 }

 while önce koşulu kontrol eder.
 Koşul başlangıçta false ise döngü
 bir kez bile çalışmaz.
*/


// MARK: 1 - Temel while Kullanımı

var sayac = 1

while sayac <= 5 {
    print("Sayaç:", sayac)

    sayac += 1
}

/*
 Çalışma sırası:

 sayac = 1 → 1 <= 5 → true
 sayac = 2 → 2 <= 5 → true
 sayac = 3 → 3 <= 5 → true
 sayac = 4 → 4 <= 5 → true
 sayac = 5 → 5 <= 5 → true
 sayac = 6 → 6 <= 5 → false

 Çıktı:

 Sayaç: 1
 Sayaç: 2
 Sayaç: 3
 Sayaç: 4
 Sayaç: 5
*/


// MARK: 2 - Değeri Azaltarak while Kullanımı

var kalanGun = 3

while kalanGun > 0 {
    print("Kalan gün:", kalanGun)

    kalanGun -= 1
}

print("Başla!")

/*
 Çıktı:

 Kalan gün: 3
 Kalan gün: 2
 Kalan gün: 1
 Başla!

 kalanGun değeri 0 olduğunda koşul
 false olur ve döngü sona erer.
*/


// MARK: 3 - İlerleme Değeriyle while

/*
 while, bir işlemin ilerleme durumunu
 takip etmek için kullanılabilir.
*/

var indirmeYuzdesi = 0

while indirmeYuzdesi < 100 {
    indirmeYuzdesi += 25

    print("İndirme durumu: %\(indirmeYuzdesi)")
}

print("İndirme tamamlandı.")

/*
 Çıktı:

 İndirme durumu: %25
 İndirme durumu: %50
 İndirme durumu: %75
 İndirme durumu: %100
 İndirme tamamlandı.
*/


// MARK: 4 - İlerleme Alıştırması

var pilSeviyesi = 20

while pilSeviyesi < 100 {
    pilSeviyesi += 20

    print("Pil seviyesi: %\(pilSeviyesi)")
}

print("Pil tamamen doldu.")

/*
 Çıktı:

 Pil seviyesi: %40
 Pil seviyesi: %60
 Pil seviyesi: %80
 Pil seviyesi: %100
 Pil tamamen doldu.

 Başlangıç değeri %20'dir.

 Değer önce artırılıp sonra yazdırıldığı için
 ilk çıktı %40 olur.
*/


// MARK: 5 - Birden Fazla Koşulla while

/*
 && operatörü "ve" anlamına gelir.

 Döngünün devam etmesi için iki koşulun da
 true olması gerekir.
*/

var tamamlananDersSayisi = 0
var enerjiSeviyesi = 3

while tamamlananDersSayisi < 5 && enerjiSeviyesi > 0 {
    tamamlananDersSayisi += 1
    enerjiSeviyesi -= 1

    print("Tamamlanan ders:", tamamlananDersSayisi)
    print("Kalan enerji:", enerjiSeviyesi)
}

/*
 Döngü bittiğinde:

 tamamlananDersSayisi < 5 → true
 enerjiSeviyesi > 0       → false

 && kullanıldığı için koşullardan birinin
 false olması döngüyü bitirir.
*/


// MARK: 6 - Birden Fazla Koşul Alıştırması

var kalanGirisHakki = 3
let sifreDogruMu = false

while kalanGirisHakki > 0 && !sifreDogruMu {
    print("Giriş başarısız.")

    kalanGirisHakki -= 1

    print("Kalan giriş hakkı:", kalanGirisHakki)
}

print("Giriş denemeleri sona erdi.")

/*
 Çıktı:

 Giriş başarısız.
 Kalan giriş hakkı: 2
 Giriş başarısız.
 Kalan giriş hakkı: 1
 Giriş başarısız.
 Kalan giriş hakkı: 0
 Giriş denemeleri sona erdi.

 sifreDogruMu true olsaydı !sifreDogruMu
 false olur ve döngü hiç çalışmazdı.
*/


// MARK: 7 - Koşul Başlangıçta false Olursa

/*
 while, döngünün içindeki koddan önce
 koşulu kontrol eder.

 Koşul başlangıçta false ise döngü
 sıfır kez çalışır.
*/

var bildirimSayisi = 0

while bildirimSayisi > 0 {
    print("Yeni bildirimin var.")

    bildirimSayisi -= 1
}

print("Bildirim kontrolü tamamlandı.")

/*
 İlk kontrol:

 bildirimSayisi > 0
 0 > 0 → false

 Bu nedenle yalnızca şu çıktı oluşur:

 Bildirim kontrolü tamamlandı.
*/


// MARK: 8 - Başlangıç Koşulu Alıştırması

var stokMiktari = 0

while stokMiktari > 0 {
    print("Ürün satıldı.")

    stokMiktari -= 1
}

print("Stok kontrolü tamamlandı.")

/*
 stokMiktari başlangıçta 0 olduğu için
 döngünün içindeki kod hiç çalışmaz.
*/


// MARK: 9 - Sonsuz Döngü Tehlikesi

/*
 Döngünün koşulunu değiştiren bir işlem yazmazsak
 koşul sürekli true kalabilir.

 Buna sonsuz döngü denir.

 Aşağıdaki kodu çalıştırma:

 var sayi = 1

 while sayi <= 5 {
     print(sayi)
 }

 sayi değeri artırılmadığı için sürekli 1 kalır.
 Koşul hiçbir zaman false olmaz.

 Doğru kullanım:

 sayi += 1
*/


// MARK: 10 - for-in ve while Farkı

/*
 for-in:

 - Tekrar sayısı belliyse kullanılır.
 - Belirli bir aralık dolaşılacaksa kullanılır.
 - String veya koleksiyon dolaşılacaksa kullanılır.

 while:

 - Bir koşul true olduğu sürece çalışır.
 - Tekrarın ne zaman biteceği koşula bağlıdır.
 - Başlangıçta koşul false ise hiç çalışmayabilir.
*/

for _ in 1...3 {
    print("for-in: Swift çalışıyorum.")
}

var mevcutSeviye = 1
let hedefSeviye = 5

while mevcutSeviye < hedefSeviye {
    mevcutSeviye += 1

    print("while ile yeni seviye:", mevcutSeviye)
}


// MARK: 11 - Genel while Alıştırması

/*
 Bakiye, çekilecek tutardan büyük veya eşit
 olduğu sürece para çekme işlemi yapılıyor.
*/

var bakiye = 500
let cekilecekTutar = 120
var islemSayisi = 0

while bakiye >= cekilecekTutar {
    bakiye -= cekilecekTutar
    islemSayisi += 1

    print("Kalan bakiye:", bakiye)
}

print("Toplam işlem sayısı:", islemSayisi)
print("Yetersiz bakiye. Kalan:", bakiye)

/*
 Çıktı:

 Kalan bakiye: 380
 Kalan bakiye: 260
 Kalan bakiye: 140
 Kalan bakiye: 20
 Toplam işlem sayısı: 4
 Yetersiz bakiye. Kalan: 20

 Son kontrolde:

 20 >= 120 → false

 olduğu için döngü sona erer.
*/


// MARK: - KISA ÖZET

/*
 while
 Koşul true olduğu sürece çalışır.

 while önce koşulu kontrol eder.
 Koşul başlangıçta false ise sıfır kez çalışır.

 +=
 Sayısal değeri artırmak için kullanılabilir.

 -=
 Sayısal değeri azaltmak için kullanılabilir.

 &&
 Birden fazla koşulun tamamının
 true olmasını gerektirir.

 !
 Bool değerini tersine çevirir.

 Sonsuz döngü
 Döngü koşulu hiçbir zaman false olmazsa oluşur.

 for-in
 Tekrar sayısı veya dolaşılacak değerler belliyse
 tercih edilir.

 while
 Tekrarın devam etmesi bir koşula bağlıysa
 tercih edilir.

 Bir sonraki sayfada repeat-while öğreneceğiz.

 repeat-while, while'dan farklı olarak kodu önce
 bir kez çalıştırır ve ardından koşulu kontrol eder.
*/
