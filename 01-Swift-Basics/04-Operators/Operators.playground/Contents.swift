import UIKit

// MARK: - SWIFT OPERATÖRLER

/*
 Operatörler; değerler üzerinde hesaplama, karşılaştırma,
 atama ve mantıksal kontrol yapmamızı sağlayan işaretlerdir.
*/


// MARK: 1 - Atama Operatörü

// = işareti sağdaki değeri soldaki değişkene atar.

var currentScore = 10
let programmingLanguage = "Swift"

print("Başlangıç puanı:", currentScore)
print("Programlama dili:", programmingLanguage)


// MARK: 2 - Aritmetik Operatörler

let firstNumber = 10
let secondNumber = 3

// Toplama
let addition = firstNumber + secondNumber
print("Toplama:", addition)

// Çıkarma
let subtraction = firstNumber - secondNumber
print("Çıkarma:", subtraction)

// Çarpma
let multiplication = firstNumber * secondNumber
print("Çarpma:", multiplication)

// Bölme
let integerDivision = firstNumber / secondNumber
print("Int bölme:", integerDivision)

// Kalan bulma
let remainder = firstNumber % secondNumber
print("Kalan:", remainder)


// MARK: 3 - Int ve Double Bölme Farkı

/*
 İki Int bölündüğünde sonuç Int olur.
 Ondalıklı bölüm silinir.
*/

let intResult = 7 / 2
print("Int bölme sonucu:", intResult) // 3

/*
 Ondalıklı sonuç istiyorsak Double kullanırız.
*/

let doubleResult = 7.0 / 2.0
print("Double bölme sonucu:", doubleResult) // 3.5


// MARK: 4 - Bileşik Atama Operatörleri

var score = 10

// score = score + 5 ile aynıdır.
score += 5
print("Toplama sonrası:", score)

// score = score - 2 ile aynıdır.
score -= 2
print("Çıkarma sonrası:", score)

// score = score * 3 ile aynıdır.
score *= 3
print("Çarpma sonrası:", score)

// score = score / 2 ile aynıdır.
score /= 2
print("Bölme sonrası:", score)

/*
 Swift'te ++ ve -- operatörleri bulunmaz.

 Bunun yerine:
 number += 1
 number -= 1

 kullanılır.
*/

var number = 5

number += 1
print("Bir artırıldı:", number)

number -= 1
print("Bir azaltıldı:", number)


// MARK: 5 - Karşılaştırma Operatörleri

/*
 Karşılaştırma işlemlerinin sonucu her zaman Bool olur:
 true veya false
*/

let userAge = 25

// Eşit mi?
print("25'e eşit mi?:", userAge == 25)

// Eşit değil mi?
print("25'e eşit değil mi?:", userAge != 25)

// Büyük mü?
print("18'den büyük mü?:", userAge > 18)

// Küçük mü?
print("18'den küçük mü?:", userAge < 18)

// Büyük veya eşit mi?
print("25'ten büyük veya eşit mi?:", userAge >= 25)

// Küçük veya eşit mi?
print("25'ten küçük veya eşit mi?:", userAge <= 25)

/*
 =  değer atamak için kullanılır.
 == eşitlik kontrolü yapmak için kullanılır.
*/

var testNumber = 10
print("10'a eşit mi?:", testNumber == 10)


// MARK: 6 - Mantıksal Operatörler

let hasMac = true
let isLearningSwift = true
let hasPublishedApp = false

// && (VE): Bütün koşullar true olmalıdır.
let canDevelopiOSApp = hasMac && isLearningSwift
print("iOS uygulaması geliştirebilir mi?:", canDevelopiOSApp)

// || (VEYA): Koşullardan en az biri true olmalıdır.
let hasDeveloperExperience = isLearningSwift || hasPublishedApp
print("Geliştirici deneyimi var mı?:", hasDeveloperExperience)

// ! (DEĞİL): Bool değerini tersine çevirir.
let isNotPublished = !hasPublishedApp
print("Uygulama henüz yayınlanmadı mı?:", isNotPublished)


// MARK: 7 - Mantıksal Operatörlerin Sonuçları

print("true && true:", true && true)     // true
print("true && false:", true && false)   // false
print("false && false:", false && false) // false

print("true || true:", true || true)     // true
print("true || false:", true || false)   // true
print("false || false:", false || false) // false

print("!true:", !true)   // false
print("!false:", !false) // true


// MARK: 8 - İşlem Önceliği

/*
 Çarpma ve bölme, toplama ve çıkarmadan önce yapılır.
*/

let precedenceResult = 2 + 3 * 4
print("İşlem önceliği sonucu:", precedenceResult) // 14

/*
 Parantez içindeki işlem önce yapılır.
*/

let parenthesizedResult = (2 + 3) * 4
print("Parantezli sonuç:", parenthesizedResult) // 20


// MARK: 9 - String Birleştirme Operatörü

// + operatörü String değerleri birleştirmek için de kullanılabilir.

let firstName = "Ayşegül"
let lastName = "Okay"

let fullName = firstName + " " + lastName
print("Tam ad:", fullName)


// MARK: 10 - Ternary Operatörü

/*
 Ternary operatörü kısa bir koşul yazmamızı sağlar.

 Yapısı:
 koşul ? doğruysa kullanılacak değer : yanlışsa kullanılacak değer
*/

let personAge = 25

let ageStatus = personAge >= 18 ? "Yetişkin" : "Çocuk"
print("Yaş durumu:", ageStatus)


// MARK: - KISA ÖZET

/*
 =   Değer atama

 +   Toplama veya String birleştirme
 -   Çıkarma
 *   Çarpma
 /   Bölme
 %   Kalan bulma

 +=  Toplayarak ata
 -=  Çıkararak ata
 *=  Çarparak ata
 /=  Bölerek ata

 ==  Eşit mi?
 !=  Eşit değil mi?
 >   Büyük mü?
 <   Küçük mü?
 >=  Büyük veya eşit mi?
 <=  Küçük veya eşit mi?

 &&  Ve
 ||  Veya
 !   Değil

 ? : Ternary operatörü
*/

// MARK: - Kodlama Görevi

/*
 Alışveriş hesabı
*/

// Hesaplama sırasında değişmeyecek bilgiler
let urunAdi: String = "Mum"
let urunFiyati: Double = 249.90
let kargoUcreti: Double = 39.90
let stokVarMi: Bool = true

// Ürün adedini daha sonra artıracağımız için var kullanıyoruz.
var urunAdedi: Int = 2

// Ürün fiyatı ile ürün adedini çarparak ara toplamı buluyoruz.
// urunFiyati Double, urunAdedi Int olduğu için adedi Double'a dönüştürüyoruz.
let araToplam = urunFiyati * Double(urunAdedi)

// Ara toplama kargo ücretini ekliyoruz.
let toplamTutar = araToplam + kargoUcreti

// Toplam tutarın 500 veya daha büyük olup olmadığını kontrol ediyoruz.
let ucretsizKargoyaUygunMu = toplamTutar >= 500

// Stok varsa VE ürün adedi sıfırdan büyükse satın alma yapılabilir.
let satinAlmaYapilabilirMi = stokVarMi && urunAdedi > 0

// Ürün adedinin 2'ye bölümünden kalan 0 ise sayı çifttir.
let urunAdediCiftMi = urunAdedi % 2 == 0

// Sonuçları yazdırıyoruz.
print("Ürün adı:", urunAdi)
print("Ürün fiyatı:", urunFiyati)
print("Ürün adedi:", urunAdedi)
print("Ara toplam:", araToplam)
print("Kargo ücreti:", kargoUcreti)
print("Toplam tutar:", toplamTutar)
print("Ücretsiz kargoya uygun mu?:", ucretsizKargoyaUygunMu)
print("Satın alma yapılabilir mi?:", satinAlmaYapilabilirMi)
print("Ürün adedi çift mi?:", urunAdediCiftMi)

// Ürün adedini 1 artırıyoruz.
urunAdedi += 1

print("Artırılmış ürün adedi:", urunAdedi)
