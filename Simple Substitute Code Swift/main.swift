//
//  main.swift
//  Simple Substitute Code Swift
//
//  Created by Сергей Горейко on 08/06/2020.
//  Copyright © 2020 Сергей Горейко. All rights reserved.
//

import Foundation

let alph: [Character] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
var new_alph: [Character] = []


func getIndexForEncrypt(symbol: Character) -> Int {
    
    for j in 0..<alph.count {
        if (alph[j] == symbol) {
            return j
        }
    }
    
    return 0
}

func getIndexForDecrypt(symbol: Character) -> Int {
    
    for j in 0..<new_alph.count {
        if (new_alph[j] == symbol) {
            return j
        }
    }
    
    return 0
}

func newAlph() {
    
    print("Введите ключ:")
    new_alph = Array(String(readLine()!).uppercased())
    print("----------------------------------------------------------------------------------------------------------------------------------")
}

func encrypt() {
    
    newAlph()
    print(alph)
    print(new_alph)
    print("----------------------------------------------------------------------------------------------------------------------------------")
    print("Введите сообщение:")
    
    var message = Array(String(readLine()!).uppercased())
    print("----------------------")
    
    for i in 0..<message.count {
        if (message[i] == " " || message[i] == "." || message[i] == "," || message[i] == "!" || message[i] == "?") { continue }
        let x = getIndexForEncrypt(symbol: message[i])
        message[i] = new_alph[x]
    }
    
    print("Результат:")
    print(String(message))
    print("----------------------")
}

func decrypt() {
    
    newAlph()
    print(alph)
    print(new_alph)
    print("----------------------------------------------------------------------------------------------------------------------------------")
    print("Введите сообщение:")
    
    var message = Array(String(readLine()!).uppercased())
    print("----------------------")
    
    for i in 0..<message.count {
        if (message[i] == " " || message[i] == "." || message[i] == "," || message[i] == "!" || message[i] == "?") { continue }
        let x = getIndexForDecrypt(symbol: message[i])
        message[i] = alph[x]
    }
    
    print("Результат:")
    print(String(message))
    print("----------------------")
}




print("Выберите команду:\n1. Зашифровать\n2. Расшифровать")
print("-----------------------")

let i = Int(readLine()!)!

switch i {
    case 1:
        encrypt()
    case 2:
        decrypt()
    default:
        print("Вы ввели неверную команду")
}

