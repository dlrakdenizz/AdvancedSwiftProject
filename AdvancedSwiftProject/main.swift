//
//  main.swift
//  AdvancedSwiftProject
//
//  Created by Dilara Akdeniz on 4.05.2023.
//

import Foundation

let classJames = MusicianClass(nameInput: "James", ageInput: 50, instrumentInput: "Guitar")

//print(classJames.age)  //50 yazdırır.

var structJames = MusianStruct(name: "James", age: 50, instrument: "Guitar")  // init fonksiyonu halihazirda geliyor


// IMMUTABLE STRUCT

//print(structJames.age) //50 yazdırır. Buradan struct için bir Constructor ya da init fonksiyon olmasına gerek olmadığını anlarız. Struct kendisi oluşturabiliyor. (free init)

classJames.age = 51

//print(classJames.age)  //51 yazdırır. Mutable

structJames.age = 51

//print(structJames) // Kod hata verir. Class gibi struct let olarak tanımlı, her ne kadar struct içerisindeki age var olarak tanımlansa da immutable özellikten dolayı hata almamak için struct da var olarak tanımlanmalı.







// REFERENCE vs VALUE

let copyOfClassJames = classJames

var copyOfStructJames = structJames

//print(copyOfClassJames.age) //51 yazdırır.
//print(copyOfStructJames.age) //51 yazdırır.

copyOfClassJames.age = 52
copyOfStructJames.age = 52

//print(copyOfClassJames.age) //52 yazdırır.
//print(copyOfStructJames.age) //52 yazdırır.

//print(classJames.age) //52 yazdırır. Kopyaladigim classi degistirmeme ragmen normal class da degisti.
//print(structJames.age) //51 yazdırır. Structda bu durum yasanmadi. Bunun sebebi reference typelardir.

//Reference Types -> Class'lar icin gecerlidir.
//Copy -> Same object new reference -> 1 object + 2 reference (Yeni obje oluşmuyor sadece heap içerisinde 2 referans var, dolayısıyla kopyanın da aslının da değerleri değişti.

//Value Types -> Struct
//Copy -> new object -> 2 objects (Ana objenin değeri değişmedi, sadece kopya olan değişti.)








// FUNCTION vs MUTATING FUNCTION

//print(classJames.age) //52 yazdırır.
classJames.happyBirthday()
//print(classJames.age) //53 yazdırır.

//print(structJames.age) //51 yazdırır.
structJames.happyBirthday()
//print(structJames.age) //52 yazdırır. Structlarda degiskenin degerini degistirebilmek icin mutating fonksiyon kullanilir.








// TUPLE  (Birden fazla degiskeni ayni koleksiyon icerisinde tutulmasini saglar.)

let myTuple = (1,3)
//print(myTuple.0) //1 yazdırır.

var myTuple2 = (1,3,5)
myTuple2.2 = 10 //Tuple let olarak tanimlandiysa bu degisim yapilamaz. var olarak tanimladiysak yapabiliriz.
//print(myTuple2.2) //10 yazdırır.

let myTuple3 = ("Dilara", 100)

let myTuple4 = (10,[10,20,30])
//print(myTuple4.1[1]) //20 yazdırır.

let myString : String?

let predefinedTuple : (String, String)

predefinedTuple.0 = "Dilara"
predefinedTuple.1 = "Akdeniz"

//print(predefinedTuple) //("Dilara", "Akdeniz")

let newTuple = (name: "James", metallica: true)
//print(newTuple.metallica) //true yazdırır.
//print(newTuple.name) //James yazdırır.








//GUARD LET vs IF LET

// Guard -> Negative && Confident (Daha kendine guvenli bir fonksiyon en bastan yapamazsan bunu dondur diyoruz.)
//If -> Positive (Burada ise yapabilirsen bunu dondur olmazsa 0 dondur diyoruz.)

let myNumber = "Apple"

func convertToIntegerIf (stringInput : String) -> Int {
    if let myInteger = Int(stringInput) {
        return myInteger
    } else {
        return 0
    }
}

func convertToIntegerGuard (stringInput : String) -> Int {
    guard let myInteger = Int(stringInput) else { //if let gibi yapabilirsen myInteger döndür, yapamazsan 0 döndür demiyoruz. else'i guard let'ten hemen sonraya koyuyoruz, böylece "benim stringInput kesin myInteger'a dönecek oldu ki dönmezse 0 döndür" gibi daha sert bir ifade var.
        return 0
    }
    return myInteger
}

//print(convertToIntegerIf(stringInput: myNumber)) //0 yazdırır
//print(convertToIntegerGuard(stringInput: myNumber)) //0 yazdırır








//SWITCH

let myNum = 11

//REMAINDER

let myRemainder = myNum % 2
print(myRemainder)

if myRemainder == 1 {
    print("it's 1")
} else if myRemainder == 2 {
    print("it's 2")
} else if myRemainder == 3 {
    print("it's 3")
}

switch myRemainder {
case 1:
    print("it's 1")
case 2:
    print("it's 2")
case 3:
    print("it's 3")
default:
    print("none of above")
}

switch myRemainder {
case 1...3:
    print("it's 1-3")
default:
    print("none of above")
}








// BREAKPOINT -> Kod satir sayisina tiklayinca olusur, debugging yapilmasini saglar.

var x = 5

print(x)

x += 1

print(x)
