//
//  MusicianStruct.swift
//  AdvancedSwiftProject
//
//  Created by Dilara Akdeniz on 4.05.2023.
//

import Foundation

struct MusianStruct{
    
    var name : String
    var age : Int
    var instrument : String
    
   mutating func happyBirthday(){
        self.age += 1 //Structlarda self immutabledir. Dolayisiyla degisiklik yapabilmek icin mutating fonksiyon kullanilir.
    }
     
}

