
import UIKit

// MARK: - IF, ELSE IF VE ELSE KOŞULLARI

/*
 Koşullar, programın belirli durumlara göre
 farklı kararlar vermesini sağlar.

 Örneğin:

 - Kullanıcının yaşı 18 veya daha büyük mü?
 - Sınav notu geçmek için yeterli mi?
 - Kullanıcı giriş yapmış mı?
 - Ürün stokta var mı?

 Koşul ifadelerinin sonucu Bool olur:

 true  → Koşul doğru
 false → Koşul yanlış
*/


// MARK: 1 - Koşulların Temel Yapısı

/*
 Temel kullanım:

 if koşul {
     Koşul doğruysa çalışacak kod
 }

 if kelimesinden sonra yazılan ifade
 true veya false sonucu üretmelidir.
*/

let age = 25

if age >= 18 {
    print("Kullanıcı yetişkindir.")
}

/*
 age >= 18 karşılaştırmasının sonucu true olur.

 Koşul true olduğu için if bloğunun
 içindeki print çalışır.
*/


// MARK: 2 - Sadece if Kullanımı

/*
 Yalnızca belirli bir koşul doğru olduğunda
 işlem yapmak istiyorsak sadece if kullanabiliriz.

 Koşul false olursa if bloğu çalışmaz.
*/

let examScore = 70

if examScore >= 50 {
    print("Sınavı geçti.")
}

/*
 70 >= 50 sonucu true olduğu için çıktı:

 Sınavı geçti.
*/


// MARK: 3 - if ve else

/*
 İki farklı ihtimal varsa if ve else kullanabiliriz.

 if koşulu true olduğunda if bloğu çalışır.
 if koşulu false olduğunda else bloğu çalışır.

 Yapısı:

 if koşul {
     Koşul doğruysa çalışır.
 } else {
     Koşul yanlışsa çalışır.
 }
*/

let temperature = 15

if temperature >= 20 {
    print("Hava sıcak.")
} else {
    print("Hava soğuk.")
}

/*
 15 >= 20 sonucu false olduğu için
 else bloğu çalışır.

 Çıktı:

 Hava soğuk.
*/


// MARK: 4 - else if

/*
 İkiden fazla ihtimali kontrol etmek için
 else if kullanılır.

 Swift koşulları yukarıdan aşağıya kontrol eder.
 İlk doğru koşulu çalıştırır ve diğer koşullara bakmaz.
*/

let courseGrade = 75

if courseGrade >= 85 {
    print("Not: Pekiyi")
} else if courseGrade >= 70 {
    print("Not: İyi")
} else if courseGrade >= 50 {
    print("Not: Geçer")
} else {
    print("Not: Kaldı")
}

/*
 Kontrollerin sırası:

 75 >= 85 → false
 75 >= 70 → true

 İkinci koşul doğru olduğu için çıktı:

 Not: İyi
*/


// MARK: 5 - Koşulların Sırası

/*
 else if kullanırken koşulların sırası önemlidir.

 Sayısal aralıkları kontrol ederken genellikle
 en büyük değerden en küçük değere doğru ilerleriz.
*/

let batteryLevel = 45

if batteryLevel >= 80 {
    print("Pil seviyesi yüksek.")
} else if batteryLevel >= 20 {
    print("Pil seviyesi orta.")
} else {
    print("Pil seviyesi düşük.")
}

/*
 45 >= 80 → false
 45 >= 20 → true

 Çıktı:

 Pil seviyesi orta.
*/

/*
 Aşağıdaki sıralama yanlış sonuç oluşturabilirdi:

 if batteryLevel >= 20 {
     print("Pil seviyesi orta.")
 } else if batteryLevel >= 80 {
     print("Pil seviyesi yüksek.")
 }

 Çünkü 80 ve üzerindeki değerler aynı zamanda
 20'den de büyüktür. İlk koşul çalışacağı için
 "Pil seviyesi yüksek." bölümüne ulaşılamaz.
*/


// MARK: 6 - Karşılaştırma Operatörleri

/*
 Koşullarda kullanabileceğimiz karşılaştırma operatörleri:

 ==  Eşit mi?
 !=  Eşit değil mi?
 >   Büyük mü?
 <   Küçük mü?
 >=  Büyük veya eşit mi?
 <=  Küçük veya eşit mi?

 Karşılaştırma işlemlerinin sonucu Bool olur.
*/

let productCount = 5

print("Ürün sayısı 5 mi?:", productCount == 5)
print("Ürün sayısı 5 değil mi?:", productCount != 5)
print("Ürün sayısı 3'ten büyük mü?:", productCount > 3)
print("Ürün sayısı 10'dan küçük mü?:", productCount < 10)

/*
 =  değer atamak için kullanılır.
 == eşitlik kontrolü yapmak için kullanılır.
*/


// MARK: 7 - && Operatörü ile Koşul

/*
 && operatörü "ve" anlamına gelir.

 Sonucun true olması için bütün koşulların
 true olması gerekir.

 true  && true  → true
 true  && false → false
 false && false → false
*/

let knowsSwift = true
let hasPortfolio = false

if knowsSwift && hasPortfolio {
    print("İş başvurusu için hazır.")
} else {
    print("Hazırlanmaya devam etmelisin.")
}

/*
 knowsSwift  → true
 hasPortfolio → false

 true && false sonucu false olduğu için
 else bloğu çalışır.
*/


// MARK: 8 - || Operatörü ile Koşul

/*
 || operatörü "veya" anlamına gelir.

 Sonucun true olması için koşullardan
 en az birinin true olması yeterlidir.

 true  || true  → true
 true  || false → true
 false || false → false
*/

let isStudent = true
let hasDiscountCoupon = false

if isStudent || hasDiscountCoupon {
    print("İndirim uygulanabilir.")
} else {
    print("İndirim uygulanamaz.")
}

/*
 isStudent        → true
 hasDiscountCoupon → false

 true || false sonucu true olduğu için
 if bloğu çalışır.
*/


// MARK: 9 - ! Operatörü ile Koşul

/*
 ! operatörü "değil" anlamına gelir.
 Bool değerini tersine çevirir.

 !true  → false
 !false → true
*/

let isAppPublished = false

if !isAppPublished {
    print("Uygulama henüz yayınlanmadı.")
} else {
    print("Uygulama yayınlandı.")
}

/*
 isAppPublished değeri false'tur.

 !isAppPublished ifadesi bu değeri
 tersine çevirerek true yapar.
*/


// MARK: 10 - ! Operatörü Örneği

let isAccountBlocked = false

if !isAccountBlocked {
    print("Hesaba giriş yapılabilir.")
} else {
    print("Hesaba giriş yapılamaz.")
}

/*
 isAccountBlocked → false

 !isAccountBlocked → true

 Bu nedenle çıktı:

 Hesaba giriş yapılabilir.
*/


// MARK: 11 - Birden Fazla Mantıksal Operatör

/*
 Aynı koşul içerisinde birden fazla
 mantıksal operatör kullanabiliriz.

 Okunabilirliği artırmak için parantez kullanabiliriz.
*/

let hasMac = true
let isLearningSwift = true
let hasPublishedProject = false

if hasMac && (isLearningSwift || hasPublishedProject) {
    print("iOS geliştirmeye devam edebilir.")
} else {
    print("Gerekli koşullar tamamlanmadı.")
}

/*
 Önce parantezin içi kontrol edilir:

 isLearningSwift || hasPublishedProject
 true || false → true

 Daha sonra:

 hasMac && true
 true && true → true

 Bu nedenle if bloğu çalışır.
*/


// MARK: 12 - İç İçe if Kullanımı

/*
 Bir if bloğunun içine başka bir if yazılabilir.
 Buna iç içe koşul denir.

 İkinci koşulun yalnızca birinci koşul doğruysa
 kontrol edilmesini istediğimizde kullanılabilir.
*/

let hasUserAccount = true
let isPasswordCorrect = false

if hasUserAccount {
    if isPasswordCorrect {
        print("Giriş başarılı.")
    } else {
        print("Şifre yanlış.")
    }
} else {
    print("Kullanıcı hesabı bulunamadı.")
}

/*
 İlk olarak hasUserAccount kontrol edilir.

 hasUserAccount → true

 Daha sonra içteki koşula geçilir:

 isPasswordCorrect → false

 Bu nedenle çıktı:

 Şifre yanlış.
*/


// MARK: 13 - İç İçe if Alıştırması

let userAge = 20
let hasDriverLicense = false

if userAge >= 18 {
    if hasDriverLicense {
        print("Araç kullanabilir.")
    } else {
        print("Ehliyeti bulunmuyor.")
    }
} else {
    print("Yaşı araç kullanmak için uygun değil.")
}

/*
 userAge >= 18 → true
 hasDriverLicense → false

 Bu nedenle çıktı:

 Ehliyeti bulunmuyor.
*/


// MARK: 14 - Birleşik Örnek

/*
 İş başvurusuna hazırlık durumunu kontrol eden
 küçük bir koşul örneği.
*/

let candidateKnowsSwift = true
let candidateHasGitHubProfile = true
let candidateProjectCount = 2

if !candidateKnowsSwift {
    print("Önce Swift temellerini öğrenmelisin.")
} else if candidateHasGitHubProfile && candidateProjectCount >= 2 {
    print("İş başvurusu yapmaya başlayabilirsin.")
} else if candidateHasGitHubProfile {
    print("GitHub profiline daha fazla proje eklemelisin.")
} else {
    print("Bir GitHub profili ve proje portföyü oluşturmalısın.")
}


// MARK: - KISA ÖZET

/*
 if
 Koşul true olduğunda çalışır.

 else if
 Birden fazla koşulu sırayla kontrol eder.

 else
 Önceki koşulların tamamı false olduğunda çalışır.

 ==  Eşit mi?
 !=  Eşit değil mi?
 >   Büyük mü?
 <   Küçük mü?
 >=  Büyük veya eşit mi?
 <=  Küçük veya eşit mi?

 &&  Ve
 Bütün koşullar true olmalıdır.

 ||  Veya
 Koşullardan en az biri true olmalıdır.

 !   Değil
 Bool değerini tersine çevirir.

 İç içe if
 Bir koşul doğru olduğunda başka bir
 koşulu kontrol etmemizi sağlar.
*/
