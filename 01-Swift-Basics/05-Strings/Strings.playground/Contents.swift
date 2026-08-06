import UIKit

// MARK: - STRING VE METİN İŞLEMLERİ

/*
 String, Swift'te metinleri saklamak için kullanılan veri tipidir.

 String değerler çift tırnak işaretleri arasında yazılır:

 "Swift"
 "Ayşegül Okay"
 "iOS Developer"
*/


// MARK: 1 - String Oluşturma

// Türü açıkça belirtiyoruz.
let ad: String = "Ayşegül"

// Swift, değere bakarak türün String olduğunu kendisi anlar.
// Buna type inference denir.
let meslek = "iOS Developer"

print("Ad:", ad)
print("Meslek:", meslek)


// MARK: 2 - Boş String

// İçerisinde hiçbir karakter bulunmayan String'dir.
let bosMetin = ""

print("Boş metin:", bosMetin)


// MARK: 3 - isEmpty

/*
 isEmpty, bir String değerinin boş olup olmadığını kontrol eder.

 Sonuç Bool olur:
 true veya false
*/

print("Metin boş mu?:", bosMetin.isEmpty)

let aciklama = "Swift öğreniyorum."

print("Açıklama boş mu?:", aciklama.isEmpty)


// MARK: 4 - String Birleştirme

/*
 + operatörü birden fazla String değerini birleştirebilir.
*/

let isim = "Ayşegül"
let soyisim = "Okay"

// Kelimelerin arasına boşluk ekliyoruz.
let tamIsim = isim + " " + soyisim

print("Tam isim:", tamIsim)


// MARK: 5 - String Interpolation

/*
 String interpolation, bir metnin içerisine değişken
 veya sabit yerleştirmemizi sağlar.

 Kullanımı:
 \(deger)
*/

let kullaniciAdi = "okayaysegull"
let yas = 25
let ogrenilenDil = "Swift"

let tanitimMetni = """
Benim adım \(tamIsim).
\(yas) yaşındayım.
\(ogrenilenDil) öğreniyorum.
GitHub kullanıcı adım: \(kullaniciAdi)
"""

print(tanitimMetni)


// MARK: 6 - String İçerisinde Sayı Kullanma

/*
 String interpolation sayesinde Int ve Double gibi
 değerleri metnin içerisinde kullanabiliriz.
*/

let baslangicYili = 2026
let gunlukCalismaSuresi = 2.5

let calismaBilgisi = """
Başlangıç yılı: \(baslangicYili)
Günlük çalışma süresi: \(gunlukCalismaSuresi) saat
"""

print(calismaBilgisi)


// MARK: 7 - count

/*
 count, String içerisindeki karakter sayısını verir.

 Sonuç Int olur.
*/

let karakterSayisi = tamIsim.count

print("Tam isimdeki karakter sayısı:", karakterSayisi)


// MARK: 8 - uppercased()

/*
 uppercased(), metindeki harfleri büyük harfe dönüştürür.

 Orijinal String değişmez; yeni bir String oluşur.
*/

let teknoloji = "Swift"
let buyukHarfliTeknoloji = teknoloji.uppercased()

print("Orijinal metin:", teknoloji)
print("Büyük harfli metin:", buyukHarfliTeknoloji)


// MARK: 9 - lowercased()

/*
 lowercased(), metindeki harfleri küçük harfe dönüştürür.

 Orijinal String değişmez.
*/

let kucukHarfliTeknoloji = teknoloji.lowercased()

print("Küçük harfli metin:", kucukHarfliTeknoloji)


// MARK: 10 - contains()

/*
 contains(), bir String içerisinde belirli bir metnin
 bulunup bulunmadığını kontrol eder.

 Sonuç Bool olur.
*/

let kariyerHedefi = "Junior iOS Developer olmak istiyorum."

let iOSIceriyorMu = kariyerHedefi.contains("iOS")
let androidIceriyorMu = kariyerHedefi.contains("Android")

print("iOS içeriyor mu?:", iOSIceriyorMu)
print("Android içeriyor mu?:", androidIceriyorMu)


// MARK: 11 - hasPrefix()

/*
 hasPrefix(), bir String değerinin belirli bir ifadeyle
 başlayıp başlamadığını kontrol eder.
*/

let githubKullaniciAdi = "okayaysegull"
let okayIleBasliyorMu = githubKullaniciAdi.hasPrefix("okay")

print("Kullanıcı adı 'okay' ile başlıyor mu?:", okayIleBasliyorMu)


// MARK: 12 - hasSuffix()

/*
 hasSuffix(), bir String değerinin belirli bir ifadeyle
 bitip bitmediğini kontrol eder.
*/

let dosyaAdi = "ContentView.swift"

let swiftDosyasiMi = dosyaAdi.hasSuffix(".swift")
let pngDosyasiMi = dosyaAdi.hasSuffix(".png")

print("Swift dosyası mı?:", swiftDosyasiMi)
print("PNG dosyası mı?:", pngDosyasiMi)


// MARK: 13 - String Değerini Değiştirme

/*
 Değer daha sonra değişecekse var kullanılır.
*/

var hedef = "Junior"

// += operatörü mevcut String'in sonuna yeni bir String ekler.
hedef += " iOS Developer"

print("Güncellenen hedef:", hedef)


// MARK: 14 - Çok Satırlı String

/*
 Üç adet çift tırnak kullanarak çok satırlı
 bir String oluşturabiliriz.
*/

let biyografi = """
Ayşegül Okay
Junior iOS Developer
Swift ve SwiftUI öğreniyor.
"""

print(biyografi)


// MARK: 15 - Özel Karakterler

/*
 \" metnin içerisinde çift tırnak gösterir.
 \n bir alt satıra geçer.
 \t sekme boşluğu bırakır.
*/

let alinti = "Ayşegül \"Swift öğreniyorum\" dedi."

print(alinti)

let ikiSatirliMetin = "Birinci satır\nİkinci satır"

print(ikiSatirliMetin)

let sekmeliMetin = "Ad:\tAyşegül\nHedef:\tiOS Developer"

print(sekmeliMetin)


// MARK: 16 - String Karşılaştırma

/*
 == iki String değerinin eşit olup olmadığını kontrol eder.
 != iki String değerinin farklı olup olmadığını kontrol eder.

 String karşılaştırmaları büyük ve küçük harfe duyarlıdır.
*/

let birinciDil = "Swift"
let ikinciDil = "Swift"
let ucuncuDil = "swift"

print("Birinci ve ikinci dil eşit mi?:", birinciDil == ikinciDil)
print("Birinci ve üçüncü dil eşit mi?:", birinciDil == ucuncuDil)
print("Birinci ve üçüncü dil farklı mı?:", birinciDil != ucuncuDil)


// MARK: 17 - String ve Character Farkı

/*
 Tek bir karakter yazsak bile Swift bunu varsayılan
 olarak String kabul eder.

 Character olmasını istiyorsak türünü açıkça belirtmeliyiz.
*/

let harfMetni = "A"              // String
let tekKarakter: Character = "A" // Character

print("String türü:", type(of: harfMetni))
print("Character türü:", type(of: tekKarakter))


// MARK: - KISA ÖZET

/*
 String                 Metin veri tipidir.
 ""                     Boş String oluşturur.
 +                      String değerleri birleştirir.
 \(deger)               String interpolation yapar.
 .isEmpty               String boş mu kontrol eder.
 .count                 Karakter sayısını verir.
 .uppercased()          Büyük harfe dönüştürür.
 .lowercased()          Küçük harfe dönüştürür.
 .contains()            Metin içeriyor mu kontrol eder.
 .hasPrefix()           Belirli ifadeyle başlıyor mu kontrol eder.
 .hasSuffix()           Belirli ifadeyle bitiyor mu kontrol eder.
 +=                     String'in sonuna yeni metin ekler.
 ==                     String değerleri eşit mi kontrol eder.
 !=                     String değerleri farklı mı kontrol eder.
 \"                     Metin içerisinde tırnak gösterir.
 \n                     Alt satıra geçer.
 \t                     Sekme boşluğu bırakır.
*/


// MARK: - KODLAMA GÖREVİ

// Kullanıcı bilgileri
let firstName = "Ayşegül"
let lastName = "Okay"
let age = 25
let city = "Şanlıurfa"

// Daha sonra += ile güncelleneceği için var kullanıyoruz.
var careerGoal = "Junior"

let githubUsername = "okayaysegull"
let fileName = "ContentView.swift"
let profileDescription = ""


// MARK: 1 - Ad ve Soyadı Birleştirme

let fullName = firstName + " " + lastName

print("Tam ad:", fullName)


// MARK: 2 - String Interpolation ile Tanıtım

let introductionText = """
Ben \(fullName), \(age) yaşındayım ve \(city)'da yaşıyorum.
"""

print("Tanıtım:", introductionText)


// MARK: 3 - Karakter Sayısı

let fullNameCharacterCount = fullName.count

print("Tam adın karakter sayısı:", fullNameCharacterCount)


// MARK: 4 - Büyük ve Küçük Harf

let uppercaseCareerGoal = careerGoal.uppercased()
let lowercaseCareerGoal = careerGoal.lowercased()

print("Büyük harfli hedef:", uppercaseCareerGoal)
print("Küçük harfli hedef:", lowercaseCareerGoal)


// MARK: 5 - Güncellemeden Önce contains()

// careerGoal şu anda yalnızca "Junior" olduğu için sonuç false olur.
let careerGoalContainsIOSBeforeUpdate = careerGoal.contains("iOS")

print(
    "Güncellemeden önce hedef iOS içeriyor mu?:",
    careerGoalContainsIOSBeforeUpdate
)


// MARK: 6 - hasPrefix()

let usernameStartsWithOkay = githubUsername.hasPrefix("okay")

print(
    "Kullanıcı adı 'okay' ile başlıyor mu?:",
    usernameStartsWithOkay
)


// MARK: 7 - hasSuffix()

let isSwiftFile = fileName.hasSuffix(".swift")

print("Dosya bir Swift dosyası mı?:", isSwiftFile)


// MARK: 8 - isEmpty

let isProfileDescriptionEmpty = profileDescription.isEmpty

print(
    "Profil açıklaması boş mu?:",
    isProfileDescriptionEmpty
)


// MARK: 9 - Hedefi Güncelleme

careerGoal += " iOS Developer"

print("Güncellenen hedef:", careerGoal)


// MARK: 10 - Güncellemeden Sonra contains()

// careerGoal artık "iOS" içerdiği için sonuç true olur.
let careerGoalContainsIOSAfterUpdate = careerGoal.contains("iOS")

print(
    "Güncellemeden sonra hedef iOS içeriyor mu?:",
    careerGoalContainsIOSAfterUpdate
)


// MARK: 11 - Çok Satırlı Biyografi

let biography = """
Name: \(fullName)
Age: \(age)
City: \(city)
Career goal: \(careerGoal)
GitHub: \(githubUsername)
"""

print("Biyografi:\n\(biography)")


// MARK: 12 - Özel Karakterli Mesaj

/*
 \" metin içerisinde çift tırnak gösterir.
 \n alt satıra geçirir.
*/

let specialMessage = """
\(fullName) "Swift öğreniyorum" dedi.
Hedefi: \(careerGoal)
"""

print("Özel mesaj:\n\(specialMessage)")


// MARK: 13 - TÜM SONUÇLAR

print("----------------------------------")
print("GELİŞTİRİCİ PROFİLİ")
print("----------------------------------")
print("Tam ad:", fullName)
print("Yaş:", age)
print("Şehir:", city)
print("GitHub:", githubUsername)
print("Dosya adı:", fileName)
print("Kariyer hedefi:", careerGoal)
print("Karakter sayısı:", fullNameCharacterCount)
print("Kullanıcı adı kontrolü:", usernameStartsWithOkay)
print("Swift dosyası kontrolü:", isSwiftFile)
print("Profil açıklaması boş mu?:", isProfileDescriptionEmpty)
print("Güncellenen hedef iOS içeriyor mu?:", careerGoalContainsIOSAfterUpdate)
print("----------------------------------")
