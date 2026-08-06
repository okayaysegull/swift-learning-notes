import UIKit

// MARK: - SWITCH YAPISI

/*
 switch, bir değerin farklı ihtimallerini
 kontrol etmemizi sağlayan koşul yapısıdır.

 Özellikle tek bir değerin çok sayıda ihtimali
 olduğunda if-else yapısından daha düzenli olabilir.

 switch şu yapılarla kullanılabilir:

 - Tek bir değer
 - Birden fazla değer
 - Sayı aralıkları
 - where koşulu
 - Tuple
 - let ile değer yakalama
*/


// MARK: 1 - Temel switch Kullanımı

/*
 switch içine kontrol edilecek değer yazılır.

 Her ihtimal case ile belirtilir.
 Hiçbir case eşleşmezse default çalışır.

 Swift'te case sonuna break yazmak gerekmez.
 Eşleşen case çalıştıktan sonra switch otomatik olarak sona erer.
*/

let gunNumarasi = 3

switch gunNumarasi {
case 1:
    print("Pazartesi")

case 2:
    print("Salı")

case 3:
    print("Çarşamba")

case 4:
    print("Perşembe")

case 5:
    print("Cuma")

case 6:
    print("Cumartesi")

case 7:
    print("Pazar")

default:
    print("Geçersiz gün numarası.")
}

/*
 gunNumarasi değeri 3 olduğu için çıktı:

 Çarşamba
*/


// MARK: 2 - String Değerlerle switch

/*
 switch, String değerlerle de kullanılabilir.

 String karşılaştırmaları büyük ve küçük
 harfe duyarlıdır.

 "green" ve "Green" farklı değerlerdir.
*/

let trafikIsigi = "green"

switch trafikIsigi {
case "red":
    print("Dur.")

case "yellow":
    print("Hazır ol.")

case "green":
    print("Geç.")

default:
    print("Geçersiz trafik ışığı.")
}

/*
 trafikIsigi değeri "green" olduğu için çıktı:

 Geç.
*/


// MARK: 3 - Aynı case İçinde Birden Fazla Değer

/*
 Birden fazla değerde aynı kodun çalışmasını istiyorsak
 değerleri virgülle ayırabiliriz.
*/

let secilenGun = "Cumartesi"

switch secilenGun {
case "Cumartesi", "Pazar":
    print("Hafta sonu.")

case "Pazartesi", "Salı", "Çarşamba", "Perşembe", "Cuma":
    print("Hafta içi.")

default:
    print("Geçersiz gün.")
}

/*
 secilenGun değeri "Cumartesi" olduğu için çıktı:

 Hafta sonu.
*/


// MARK: 4 - Birden Fazla Değer Alıştırması

let ay = 7

switch ay {
case 12, 1, 2:
    print("Kış")

case 3, 4, 5:
    print("İlkbahar")

case 6, 7, 8:
    print("Yaz")

case 9, 10, 11:
    print("Sonbahar")

default:
    print("Geçersiz ay")
}

/*
 ay değeri 7 olduğu için 6, 7, 8 değerlerini
 içeren case çalışır.

 Çıktı:

 Yaz
*/


// MARK: 5 - switch İçinde Aralık Kullanımı

/*
 switch içerisinde sayı aralıklarını kontrol edebiliriz.

 ...  Kapalı aralıktır.
      Başlangıç ve bitiş değeri aralığa dâhildir.

 ..<  Yarı açık aralıktır.
      Başlangıç dâhil, bitiş değeri dâhil değildir.
*/

let ogrenciNotu = 78

switch ogrenciNotu {
case 0..<50:
    print("Kaldı.")

case 50..<70:
    print("Geçer.")

case 70..<85:
    print("İyi.")

case 85...100:
    print("Pekiyi.")

default:
    print("Geçersiz sınav notu.")
}

/*
 Aralıkların karşıladığı değerler:

 0..<50    → 0 ile 49
 50..<70   → 50 ile 69
 70..<85   → 70 ile 84
 85...100  → 85 ile 100

 ogrenciNotu 78 olduğu için çıktı:

 İyi.
*/


// MARK: 6 - Aralık Alıştırması

let kullaniciYasi = 25

switch kullaniciYasi {
case 0...12:
    print("Çocuk")

case 13...17:
    print("Ergen")

case 18...64:
    print("Yetişkin")

case 65...:
    print("Yaşlı")

default:
    print("Geçersiz yaş")
}

/*
 65... ifadesi, 65 ve daha büyük
 bütün değerleri karşılar.

 Negatif değerler hiçbir yaş aralığına girmediği
 için default tarafından karşılanır.

 kullaniciYasi 25 olduğu için çıktı:

 Yetişkin
*/


// MARK: 7 - switch ve where Kullanımı

/*
 where, bir case'e ek koşul eklememizi sağlar.

 case let ile switch tarafından kontrol edilen
 değeri geçici bir sabite aktarabiliriz.
*/

let satinAlmaTutari = 750
let premiumUyeMi = true

switch satinAlmaTutari {
case let tutar where tutar >= 500 && premiumUyeMi:
    print("Premium üye indirimi uygulanabilir.")

case let tutar where tutar >= 500:
    print("Standart indirim uygulanabilir.")

default:
    print("İndirim uygulanamaz.")
}

/*
 Aşağıdaki bölümde satinAlmaTutari değeri
 geçici olarak tutar sabitine aktarılır:

 case let tutar

 Ardından where koşulu kontrol edilir:

 tutar >= 500 && premiumUyeMi

 İki koşul da true olduğu için çıktı:

 Premium üye indirimi uygulanabilir.
*/


// MARK: 8 - where Alıştırması

let kontrolEdilecekSayi = 9

switch kontrolEdilecekSayi {
case let sayi where sayi > 0 && sayi % 2 == 0:
    print("Pozitif çift sayı.")

case let sayi where sayi > 0 && sayi % 2 != 0:
    print("Pozitif tek sayı.")

case 0:
    print("Sayı sıfır.")

default:
    print("Negatif sayı.")
}

/*
 kontrolEdilecekSayi 9 olduğu için:

 sayi > 0       → true
 sayi % 2 != 0  → true

 Çıktı:

 Pozitif tek sayı.
*/


// MARK: 9 - switch ile Tuple Kullanımı

/*
 Tuple, birden fazla değeri tek bir yapı
 içerisinde tutmamızı sağlar.

 switch ile tuple içindeki birden fazla değeri
 aynı anda kontrol edebiliriz.
*/

let girisDurumu = (
    hesabiVarMi: true,
    sifreDogruMu: false
)

switch girisDurumu {
case (true, true):
    print("Giriş başarılı.")

case (true, false):
    print("Şifre yanlış.")

case (false, _):
    print("Kullanıcı hesabı bulunamadı.")
}

/*
 _ işareti, ilgili değerin önemli olmadığını belirtir.

 case (false, _)

 Kullanıcının hesabı yoksa şifrenin doğru veya
 yanlış olmasına bakılmaz.

 girisDurumu (true, false) olduğu için çıktı:

 Şifre yanlış.
*/


// MARK: 10 - Tuple Alıştırması

let uygulamaDurumu = (
    internetBaglantisiVarMi: true,
    kullaniciGirisYaptiMi: false
)

switch uygulamaDurumu {
case (true, true):
    print("Uygulama hazır.")

case (true, false):
    print("Giriş yapmalısın.")

case (false, _):
    print("İnternet bağlantısı yok.")
}

/*
 uygulamaDurumu (true, false) olduğu için çıktı:

 Giriş yapmalısın.
*/


// MARK: 11 - break Kullanımı

/*
 Swift'te her case sonuna break yazmak gerekmez.

 Bir case eşleştiğinde hiçbir işlem yapmak
 istemiyorsak break kullanabiliriz.
*/

let secilenMenuNumarasi = 0

switch secilenMenuNumarasi {
case 0:
    break

case 1:
    print("Profil sayfası açıldı.")

case 2:
    print("Ayarlar sayfası açıldı.")

default:
    print("Geçersiz menü seçimi.")
}

/*
 secilenMenuNumarasi 0 olduğu için case 0 çalışır.

 break kullanıldığı için herhangi bir
 çıktı oluşturulmaz.
*/


// MARK: 12 - fallthrough Kullanımı

/*
 fallthrough, eşleşen case çalıştıktan sonra
 bir sonraki case'in kodunu da çalıştırır.

 Bir sonraki case'in koşulu kontrol edilmez.

 Günlük projelerde çok sık kullanılmaz.
*/

let kullaniciRolu = "admin"

switch kullaniciRolu {
case "admin":
    print("Yönetici yetkileri verildi.")
    fallthrough

case "user":
    print("Standart kullanıcı yetkileri verildi.")

default:
    print("Kullanıcı rolü bulunamadı.")
}

/*
 kullaniciRolu "admin" olduğu için önce:

 Yönetici yetkileri verildi.

 yazdırılır.

 fallthrough nedeniyle sonraki case de çalışır:

 Standart kullanıcı yetkileri verildi.
*/


// MARK: 13 - if-else ve switch Farkı

/*
 if-else:

 - Birden fazla farklı koşulu kontrol edebilir.
 - Karmaşık mantıksal ifadelerde kullanılabilir.
 - &&, || ve ! operatörleriyle rahat kullanılır.

 switch:

 - Genellikle tek bir değerin farklı
   ihtimallerini kontrol eder.
 - Çok sayıda ihtimal olduğunda daha düzenlidir.
 - Değer, aralık, tuple ve where kontrolü yapabilir.
*/

let stokVarMi = true

if stokVarMi {
    print("Ürün satın alınabilir.")
} else {
    print("Ürün stokta bulunmuyor.")
}

/*
 Burada yalnızca iki ihtimal olduğu için
 if-else kullanımı yeterlidir.
*/

let siparisDurumu = "kargoda"

switch siparisDurumu {
case "hazirlaniyor":
    print("Sipariş hazırlanıyor.")

case "kargoda":
    print("Sipariş kargoya verildi.")

case "teslimEdildi":
    print("Sipariş teslim edildi.")

case "iptalEdildi":
    print("Sipariş iptal edildi.")

default:
    print("Geçersiz sipariş durumu.")
}

/*
 Siparişin birden fazla durumu bulunduğu için
 switch daha düzenli bir kullanım sağlar.
*/


// MARK: 14 - Genel switch Görevi

/*
 Bu örnekte şunlar birlikte kullanılıyor:

 - Tuple
 - _ işareti
 - let ile değer yakalama
 - where ile ek koşul
*/

let urunBilgisi = (
    stokVarMi: true,
    fiyat: 750
)

switch urunBilgisi {
case (false, _):
    print("Ürün stokta yok.")

case (true, let fiyat) where fiyat >= 500:
    print("Ürün stokta ve yüksek fiyatlı.")

case (true, _):
    print("Ürün stokta ve uygun fiyatlı.")
}

/*
 urunBilgisi şu değerleri içeriyor:

 stokVarMi → true
 fiyat     → 750

 Stok bulunduğu ve fiyat 500 veya daha büyük
 olduğu için çıktı:

 Ürün stokta ve yüksek fiyatlı.
*/


// MARK: - KISA ÖZET

/*
 switch
 Bir değerin farklı ihtimallerini kontrol eder.

 case
 Kontrol edilecek ihtimali belirtir.

 default
 Hiçbir case eşleşmediğinde çalışır.

 case 1, 2, 3
 Birden fazla değeri aynı case içinde kontrol eder.

 1...10
 Başlangıç ve bitiş dâhil kapalı aralıktır.

 1..<10
 Başlangıç dâhil, bitiş hariç yarı açık aralıktır.

 case let deger
 Kontrol edilen değeri geçici bir sabite aktarır.

 where
 Bir case'e ek koşul ekler.

 Tuple
 Birden fazla değeri birlikte kontrol etmeyi sağlar.

 _
 İlgili değerin önemli olmadığını belirtir.

 break
 Eşleşen case içinde hiçbir işlem yapmadan çıkar.

 fallthrough
 Sonraki case'in kodunu da çalıştırır.

 Swift'te normal case'lerin sonuna
 break yazmamız gerekmez.
*/
