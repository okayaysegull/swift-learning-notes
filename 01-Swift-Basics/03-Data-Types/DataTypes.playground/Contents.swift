import UIKit

// MARK: - Temel Veri Tipleri

// String: Metin
let fullName: String = "Ayşegül Okay"
let careerGoal: String = "iOS Developer"

// Int: Tam sayı
var age: Int = 25
let startingYear: Int = 2026

// Double: Ondalıklı sayı
let height: Double = 1.65

// Bool: Doğru veya yanlış
let hasMac: Bool = true
var isAppPublished: Bool = false

// Character: Tek karakter
let letter: Character = "A"

// Hatalı: Character yalnızca tek karakter alabilir.
// let word: Character = "Swift"

// Bir değişkenin türü belirlendikten sonra
// aynı değişkene farklı türde bir değer atanamaz.

// MARK: - Kodlama Görevi

var dailyStudyHours: Double = 3.5
let isLearningSwift: Bool = true
let nameInitial: Character = "A"

// Swift, tırnak içindeki değerden bunun String olduğunu anlar.
let githubUsername = "okayaysegull"

// Değerleri açıklamalarıyla yazdırıyoruz.
print("Full name:", fullName)
print("Age:", age)
print("Daily study hours:", dailyStudyHours)
print("Is learning Swift:", isLearningSwift)
print("Name initial:", nameInitial)
print("GitHub username:", githubUsername)

// Değerlerin Swift tarafından belirlenen türlerini yazdırıyoruz.
print(type(of: fullName))
print(type(of: age))
print(type(of: dailyStudyHours))
print(type(of: isLearningSwift))
print(type(of: nameInitial))
print(type(of: githubUsername))

// Hatalı: age yalnızca Int değer kabul eder.
// Önce yorum işaretini kaldırarak hatayı incele, sonra tekrar yoruma al.
// age = "25"
