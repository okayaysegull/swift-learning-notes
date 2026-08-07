import UIKit

// MARK: - FOR-IN DÖNGÜSÜ

/*
 Döngüler, aynı kodu tekrar tekrar çalıştırmamızı sağlar.

 for-in döngüsüyle:

 - Sayı aralıklarını dolaşabiliriz.
 - String karakterlerini dolaşabiliriz.
 - Belirli aralıklarla ilerleyebiliriz.
 - Hesaplama yapıp sonuç biriktirebiliriz.
 - Döngü içinde koşul kullanabiliriz.
 - İç içe döngüler oluşturabiliriz.
*/


// MARK: 1 - Temel for-in Kullanımı

/*
 Yapısı:

 for geçiciDeger in aralık {
     Tekrarlanacak kod
 }

 Geçici değer, her tekrarda sıradaki değeri alır.
*/

for sayi in 1...5 {
    print("Sayı:", sayi)
}

/*
 Çıktı:

 Sayı: 1
 Sayı: 2
 Sayı: 3
 Sayı: 4
 Sayı: 5
*/


// MARK: 2 - String Interpolation ile Döngü

for gun in 1...5 {
    print("\(gun). gün Swift çalışıyorum.")
}

/*
 Çıktı:

 1. gün Swift çalışıyorum.
 2. gün Swift çalışıyorum.
 3. gün Swift çalışıyorum.
 4. gün Swift çalışıyorum.
 5. gün Swift çalışıyorum.
*/


// MARK: 3 - Kapalı Aralık

/*
 ... kapalı aralıktır.

 Başlangıç ve bitiş değerleri aralığa dâhildir.

 1...5 değerleri:
 1, 2, 3, 4, 5
*/

for sayi in 1...5 {
    print("Kapalı aralık:", sayi)
}


// MARK: 4 - Yarı Açık Aralık

/*
 ..< yarı açık aralıktır.

 Başlangıç değeri dâhildir.
 Bitiş değeri dâhil değildir.

 1..<5 değerleri:
 1, 2, 3, 4
*/

for sayi in 1..<5 {
    print("Yarı açık aralık:", sayi)
}


// MARK: 5 - Yarı Açık Aralık Alıştırması

/*
 Çalışma 09.00'da başlıyor.
 17.00 bitiş saati olduğu için döngüye dâhil edilmiyor.
*/

for saat in 9..<17 {
    print("Çalışma saati:", saat)
}

/*
 Son değer 16 olur.
 17 döngüye dâhil edilmez.
*/


// MARK: 6 - String Karakterlerini Dolaşma

/*
 for-in, bir String içindeki karakterleri
 sırayla dolaşabilir.

 Döngüdeki her değer Character türündedir.
*/

let teknoloji = "Swift"

for karakter in teknoloji {
    print("Karakter:", karakter)
}

/*
 Çıktı:

 Karakter: S
 Karakter: w
 Karakter: i
 Karakter: f
 Karakter: t
*/


// MARK: 7 - String Dolaşma Alıştırması

let githubKullaniciAdi = "okayaysegull"

for karakter in githubKullaniciAdi {
    print("Kullanıcı adı karakteri:", karakter)
}


// MARK: 8 - Alt Çizgi Kullanımı

/*
 Döngünün geçici değerine ihtiyacımız yoksa
 değişken adı yerine _ kullanabiliriz.

 _ işareti, döngü değerini kullanmayacağımızı belirtir.
*/

for _ in 1...4 {
    print("İlk iOS uygulamamı geliştireceğim.")
}

/*
 Aynı cümle dört kez yazdırılır.
*/


// MARK: 9 - Döngü ile Toplam Hesaplama

/*
 Döngünün içerisinde bir değer değiştireceğimiz için
 toplam değişkenini var ile oluşturuyoruz.
*/

var toplam = 0

for sayi in 1...5 {
    toplam += sayi
}

print("1 ile 5 arasındaki sayıların toplamı:", toplam)

/*
 Hesaplama:

 0 + 1 = 1
 1 + 2 = 3
 3 + 3 = 6
 6 + 4 = 10
 10 + 5 = 15

 Sonuç: 15
*/


// MARK: 10 - Toplam Hesaplama Alıştırması

var sayilarinToplami = 0

for sayi in 1...10 {
    sayilarinToplami += sayi
}

print("1 ile 10 arasındaki sayıların toplamı:", sayilarinToplami)

/*
 Sonuç:

 Sayıların toplamı: 55
*/


// MARK: 11 - stride Kullanımı

/*
 stride, sayılar arasında belirli bir
 adım miktarıyla ilerlememizi sağlar.

 from:     Başlangıç değeri
 through:  Bitiş değeri
 by:       Adım miktarı

 through, bitiş değerini döngüye dâhil eder.
*/

for sayi in stride(from: 0, through: 10, by: 2) {
    print("İkişer ilerleme:", sayi)
}

/*
 Çıktı:

 0
 2
 4
 6
 8
 10
*/


// MARK: 12 - stride ile Geriye Sayma

/*
 Geriye doğru ilerlemek için
 negatif adım miktarı kullanılır.
*/

for sayi in stride(from: 5, through: 1, by: -1) {
    print("Geri sayım:", sayi)
}

print("Başla!")


// MARK: 13 - stride Alıştırması

for sayi in stride(from: 5, through: 50, by: 5) {
    print("Beşer ilerleme:", sayi)
}

/*
 Çıktı:

 5
 10
 15
 20
 25
 30
 35
 40
 45
 50
*/


// MARK: 14 - İç İçe for-in Döngüsü

/*
 Bir for-in döngüsünün içine başka bir
 for-in döngüsü yazabiliriz.

 Dış döngünün her tekrarı için
 iç döngü baştan sona çalışır.
*/

for satir in 1...3 {
    for sutun in 1...2 {
        print("Satır: \(satir), Sütun: \(sutun)")
    }
}

/*
 Dış döngü 3 kez çalışır.
 İç döngü her seferinde 2 kez çalışır.

 Toplam tekrar sayısı:

 3 × 2 = 6
*/


// MARK: 15 - İç İçe Döngü Alıştırması

/*
 1'den 3'e kadar çarpım tablosu.
*/

for birinciSayi in 1...3 {
    for ikinciSayi in 1...3 {
        let sonuc = birinciSayi * ikinciSayi

        print("\(birinciSayi) x \(ikinciSayi) = \(sonuc)")
    }
}

/*
 Çıktı:

 1 x 1 = 1
 1 x 2 = 2
 1 x 3 = 3
 2 x 1 = 2
 2 x 2 = 4
 2 x 3 = 6
 3 x 1 = 3
 3 x 2 = 6
 3 x 3 = 9
*/


// MARK: 16 - Döngü İçinde if Kullanımı

/*
 Döngü içerisindeki if koşuluyla
 yalnızca belirli değerlerde işlem yapabiliriz.
*/

for sayi in 1...10 {
    if sayi % 2 == 0 {
        print("Çift sayı:", sayi)
    }
}

/*
 sayi % 2 == 0

 Sayının 2'ye bölümünden kalan sıfırsa
 sayı çifttir.
*/


// MARK: 17 - Döngü İçinde if Alıştırması

for sayi in 1...20 {
    if sayi % 3 == 0 {
        print("\(sayi) sayısı 3'e tam bölünür.")
    }
}

/*
 Çıktı:

 3
 6
 9
 12
 15
 18
*/


// MARK: 18 - for-in ile where Kullanımı

/*
 where, döngüye girecek değerleri filtreler.

 Yalnızca where koşulunu sağlayan değerlerde
 döngü içerisindeki kod çalışır.
*/

for sayi in 1...20 where sayi % 3 == 0 {
    print("where ile seçilen sayı:", sayi)
}

/*
 Bu kullanım, aşağıdaki if kullanımıyla
 benzer sonucu oluşturur:

 for sayi in 1...20 {
     if sayi % 3 == 0 {
         print(sayi)
     }
 }
*/


// MARK: 19 - where Alıştırması

for sayi in 1...30 where sayi % 5 == 0 {
    print("\(sayi) sayısı 5'e tam bölünür.")
}

/*
 Çıktı:

 5
 10
 15
 20
 25
 30
*/


// MARK: 20 - Genel for-in Alıştırması

/*
 1'den 20'ye kadar olan çift sayıları
 yazdırıp toplamlarını hesaplıyoruz.
*/

var ciftSayilarinToplami = 0

for sayi in 1...20 where sayi % 2 == 0 {
    print("Çift sayı:", sayi)

    ciftSayilarinToplami += sayi
}

print("Çift sayıların toplamı:", ciftSayilarinToplami)

/*
 Sonuç:

 Çift sayıların toplamı: 110
*/


// MARK: - KISA ÖZET

/*
 for-in
 Bir aralıktaki değerleri sırayla dolaşır.

 1...5
 1 ve 5 dâhil kapalı aralıktır.

 1..<5
 1 dâhil, 5 hariç yarı açık aralıktır.

 _
 Döngü değerini kullanmayacağımızı belirtir.

 stride(from:through:by:)
 Belirli bir adım miktarıyla ilerler.

 by: -1
 Geriye doğru ilerlemeyi sağlar.

 İç içe döngü
 Bir döngünün içerisinde başka bir döngü çalıştırır.

 Döngü içinde if
 Yalnızca koşulu sağlayan değerlerde işlem yapar.

 for-in ile where
 Döngüye girecek değerleri filtreler.

 +=
 Döngü içerisinde sonuç biriktirmek için kullanılabilir.

 String dolaşma
 String içerisindeki karakterleri sırayla verir.
 Her değer Character türündedir.

 Array, Set ve Dictionary koleksiyonlarını da
 for-in ile dolaşabiliriz. Bunları koleksiyonlar
 konusuna geldiğimizde öğreneceğiz.
*/
