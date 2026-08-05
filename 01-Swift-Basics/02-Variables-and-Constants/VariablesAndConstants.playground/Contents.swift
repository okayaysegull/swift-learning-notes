import UIKit

// Değişken: Değeri daha sonra değiştirilebilen bilgiye denir.
// Sabit: Oluşturulduktan sonra değeri değiştirilemeyen bilgiye denir.

let fullName: String = "Ayşegül Okay"

var age: Int = 25

// age değerini 1 artırır. age = age + 1 ile aynı işlemdir.
age += 1

let githubUsername: String = "okayaysegull"

var currentTopic: String = "Print and Comments"

// İlk değeri değiştirmeden önce yazdırıyoruz.
print(currentTopic)

// var ile tanımlandığı için yeni bir değer atayabiliriz.
currentTopic = "Variables and Constants"

// Bütün bilgileri yazdırıyoruz.
print(fullName)
print(age)
print(githubUsername)
print(currentTopic)

// Hata verir: fullName, let ile oluşturulduğu için değiştirilemez.
// fullName = "Ayşe Gül"
