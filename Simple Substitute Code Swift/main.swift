//
//  main.swift
//  Simple Substitute Code Swift
//
//  Created by Сергей Горейко on 08/06/2020.
//  Copyright © 2020 Сергей Горейко. All rights reserved.
//

import Foundation

let alph = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
var new_alph: [String] = []
var copy: [String] = []

func getIndexForEncrypt(symbol: String) -> Int {
    
    for j in 0..<alph.count {
        if (alph[j] == symbol) {
            return j
        }
    }
    
    return 0
}

func getIndexForDecrypt(symbol: String) -> Int {
    
    for j in 0..<new_alph.count {
        if (new_alph[j] == symbol) {
            return j
        }
    }
    
    return 0
}

func newAlph() {
    
    print("Введите ключ:")
    let key = String(readLine()!).uppercased()
    
    for item in key {
        new_alph.append(String(item))
    }
    
    print("----------------------------------------------------------------------------------------------------------------------------------")
}

func encrypt() {
    
    newAlph()
    print(alph)
    print(new_alph)
    print("----------------------------------------------------------------------------------------------------------------------------------")
    print("Введите сообщение:")
    
    let message = String(readLine()!).uppercased()
    print("----------------------")
    
    for value in message {
        copy.append(String(value))
    }
    
    for i in 0..<message.count {
        if (copy[i] == " " || copy[i] == "." || copy[i] == "," || copy[i] == "!" || copy[i] == "?") { continue }
        let x = getIndexForEncrypt(symbol: copy[i])
        copy[i] = new_alph[x]
    }
    
    let text = copy.joined()
    print("Результат:")
    print(text)
    print("----------------------")
    copy = []
    new_alph = []
}

func decrypt() {
    
    newAlph()
    print(alph)
    print(new_alph)
    print("----------------------------------------------------------------------------------------------------------------------------------")
    print("Введите сообщение:")
    
    let message = String(readLine()!).uppercased()
    print("----------------------")

    for value in message {
        copy.append(String(value))
    }
    
    for i in 0..<message.count {
        if (copy[i] == " " || copy[i] == "." || copy[i] == "," || copy[i] == "!" || copy[i] == "?") {continue}
        let x = getIndexForDecrypt(symbol: copy[i])
        copy[i] = alph[x]
    }
    
    let text = copy.joined()
    print("Результат:")
    print(text)
    print("----------------------")
    copy = []
    new_alph = []
}




print("Выберите команду:\n1. Зашифровать\n2. Расшифровать")
print("-----------------------")

var i = Int(readLine()!)!

switch i {
    case 1:
        encrypt()
    case 2:
        decrypt()
    default:
        print("Вы ввели неверную команду")
}

