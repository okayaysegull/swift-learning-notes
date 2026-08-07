import UIKit

// MARK: - REPEAT-WHILE DÖNGÜSÜ

/*
 repeat-while, önce kodu çalıştırır,
 ardından koşulu kontrol eder.

 Bu nedenle koşul başlangıçta false olsa bile
 döngünün içindeki kod en az bir kez çalışır.

 Yapısı:

 repeat {
     Tekrarlanacak kod
 } while koşul
*/


// MARK: 1 - Temel repeat-while Kullanımı

var sayac = 1

repeat {
    print("Sayaç:", sayac)

    sayac += 1
} while sayac <= 5

/*
 Çalışma sırası:

 Kod çalışır → sayac 1 yazdırılır.
 sayac 2 olur → koşul kontrol edilir.

 Kod çalışır → sayac 2 yazdırılır.
 sayac 3 olur → koşul kontrol edilir.

 Bu işlem sayac 6 olana kadar devam eder.

 6 <= 5 sonucu false olduğunda döngü sona erer.

 Çıktı:

 Sayaç: 1
 Sayaç: 2
 Sayaç: 3
 Sayaç: 4
 Sayaç: 5
*/


// MARK: 2 - Temel repeat-while Alıştırması

var kalanDeneme = 3

repeat {
    print("Kalan deneme:", kalanDeneme)

    kalanDeneme -= 1
} while kalanDeneme > 0

print("Deneme hakkı sona erdi.")

/*
 Çıktı:

 Kalan deneme: 3
 Kalan deneme: 2
 Kalan deneme: 1
 Deneme hakkı sona erdi.

 kalanDeneme 0 olduğunda koşul false olur
 ve döngü sona erer.
*/


// MARK: 3 - while ve repeat-while Farkı

/*
 while:

 Önce koşulu kontrol eder.
 Koşul başlangıçta false ise hiç çalışmaz.

 repeat-while:

 Önce kodu çalıştırır.
 Daha sonra koşulu kontrol eder.
 Koşul başlangıçta false olsa bile bir kez çalışır.
*/


// MARK: 4 - Başlangıçta false Olan while

var whileDegeri = 0

while whileDegeri > 0 {
    print("while çalıştı.")

    whileDegeri -= 1
}

print("while tamamlandı.")

/*
 whileDegeri > 0 başlangıçta false olduğu için
 döngünün içindeki kod hiç çalışmaz.

 Çıktı:

 while tamamlandı.
*/


// MARK: 5 - Başlangıçta false Olan repeat-while

var repeatDegeri = 0

repeat {
    print("repeat-while çalıştı.")

    repeatDegeri -= 1
} while repeatDegeri > 0

print("repeat-while tamamlandı.")

/*
 Koşul başlangıçta false olsa bile repeat bloğu
 koşuldan önce çalıştırılır.

 Çıktı:

 repeat-while çalıştı.
 repeat-while tamamlandı.
*/


// MARK: 6 - En Az Bir Kez Çalışma Alıştırması

var menuSecimi = 0

repeat {
    print("Menü gösterildi.")
} while menuSecimi != 0

/*
 menuSecimi başlangıçta 0'dır.

 menuSecimi != 0 sonucu false olur.

 Ancak koşul sonradan kontrol edildiği için
 "Menü gösterildi." bir kez yazdırılır.
*/


// MARK: 7 - İlerleme Değeriyle repeat-while

var yuklemeYuzdesi = 0

repeat {
    yuklemeYuzdesi += 20

    print("Yükleme durumu: %\(yuklemeYuzdesi)")
} while yuklemeYuzdesi < 100

print("Yükleme tamamlandı.")

/*
 Çıktı:

 Yükleme durumu: %20
 Yükleme durumu: %40
 Yükleme durumu: %60
 Yükleme durumu: %80
 Yükleme durumu: %100
 Yükleme tamamlandı.
*/


// MARK: 8 - İlerleme Alıştırması

var guncellemeYuzdesi = 70

repeat {
    guncellemeYuzdesi += 10

    print("Güncelleme: %\(guncellemeYuzdesi)")
} while guncellemeYuzdesi < 100

print("Güncelleme tamamlandı.")

/*
 Çıktı:

 Güncelleme: %80
 Güncelleme: %90
 Güncelleme: %100
 Güncelleme tamamlandı.

 Değer önce artırıldığı için başlangıç
 değeri olan %70 yazdırılmaz.
*/


// MARK: 9 - Birden Fazla Koşulla repeat-while

/*
 && operatörü kullanıldığında döngünün devam
 etmesi için iki koşulun da true olması gerekir.

 Bu örnekte bir işlemin ikinci denemede
 başarılı olduğunu varsayıyoruz.
*/

var denemeSayisi = 0
let maksimumDenemeSayisi = 3
var islemBasariliMi = false

repeat {
    denemeSayisi += 1

    print("Deneme numarası:", denemeSayisi)

    if denemeSayisi == 2 {
        islemBasariliMi = true

        print("İşlem başarılı.")
    }
} while !islemBasariliMi && denemeSayisi < maksimumDenemeSayisi

/*
 Çalışma sırası:

 1. deneme:
 islemBasariliMi false olduğu için devam eder.

 2. deneme:
 islemBasariliMi true olur.

 !islemBasariliMi sonucu false olduğu için
 döngü sona erer.
*/


// MARK: 10 - Birden Fazla Koşul Alıştırması

var oyuncuPuani = 0
var kalanHak = 3

repeat {
    oyuncuPuani += 10
    kalanHak -= 1

    print("Oyuncu puanı:", oyuncuPuani)
    print("Kalan hak:", kalanHak)
} while oyuncuPuani < 30 && kalanHak > 0

print("Oyun sona erdi.")

/*
 Çıktı:

 Oyuncu puanı: 10
 Kalan hak: 2
 Oyuncu puanı: 20
 Kalan hak: 1
 Oyuncu puanı: 30
 Kalan hak: 0
 Oyun sona erdi.

 Son kontrolde:

 oyuncuPuani < 30 → false
 kalanHak > 0     → false

 Döngü sona erer.
*/


// MARK: 11 - Sonsuz Döngü Tehlikesi

/*
 Döngü koşulunu etkileyen değerler değiştirilmezse
 koşul sürekli true kalabilir.

 Buna sonsuz döngü denir.

 Aşağıdaki kodu çalıştırma:

 var sayi = 1

 repeat {
     print(sayi)
 } while sayi <= 5

 sayi değeri değiştirilmediği için koşul
 sürekli true kalır.

 Doğru kullanımda döngü içerisinde:

 sayi += 1

 gibi koşulu değiştiren bir işlem bulunmalıdır.
*/


// MARK: 12 - Hangi Döngüyü Kullanmalıyız?

/*
 for-in:

 - Tekrar sayısı belliyse
 - Bir sayı aralığı dolaşılacaksa
 - String veya koleksiyon dolaşılacaksa

 while:

 - Döngüden önce koşul kontrol edilecekse
 - Koşul başlangıçta false olduğunda
   kodun hiç çalışmaması gerekiyorsa

 repeat-while:

 - Kodun en az bir kez çalışması gerekiyorsa
 - Menü gösterme gibi önce işlemin yapılıp
   sonra koşulun kontrol edildiği durumlarda
*/


// MARK: - KISA ÖZET

/*
 repeat
 Döngü kodlarının bulunduğu bölümdür.

 while koşul
 repeat bloğu çalıştıktan sonra kontrol edilir.

 repeat-while en az bir kez çalışır.

 while sıfır kez çalışabilir.

 +=
 Değeri artırmak için kullanılır.

 -=
 Değeri azaltmak için kullanılır.

 &&
 Bütün koşulların true olmasını ister.

 !
 Bool değerini tersine çevirir.

 Sonsuz döngü
 Koşul hiçbir zaman false olmadığında oluşur.

 for-in
 Tekrar sayısı veya dolaşılacak değerler belliyse
 tercih edilir.

 while
 Önce koşulun kontrol edilmesi gerekiyorsa
 tercih edilir.

 repeat-while
 İşlemin en az bir kez yapılması gerekiyorsa
 tercih edilir.
*/
