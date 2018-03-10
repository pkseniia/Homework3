//
//  ViewController.swift
//  Homework 3
//
//  Created by ios02 on 24.01.18.
//  Copyright © 2018 ios02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
  
        print("Task from class")
        dayNumber(number: 8)
        print("=========================")
        print("Task: String E1")
        let myName = "Ksusha"
        countChars(name: myName)
        print("=========================")
        print("Task: String E2")
        userName(firstName: "Kseniia", lastName: "Poternak")
        print("=========================")
        print("Task: String E3")
        checkEndOfString()
        print("=========================")
        print("Task: Collections E1")
        deleteElements()
        print("=========================")
        print("Task: Collections E2")
        merge()
        print("=========================")
        print("Task: Collections E3")
        let array = ["Kitchen", "Bath", "Cabinet"]
        method1(element: array)
        print("=========================")
        print("Task: Collections E4")
        let array2 = ["Cat", "Dog", "Horse"]
        method2(element: array2)
        print("=========================")
        print("Task: Collections E5")
        dictionary()
        print("=========================")
        print("Task: Collections E6")
        let students = ["Vlad": 7,
                        "Masha": 6,
                        "Roma": 2]
        deleteDictElement(dict: students, key: "Masha")
        print("=========================")
        print("Task: String H1")
        withSpace(name: "TungFam")
        print("=========================")
        print("Task: String H2")
        reverse(word: "Hello")
        print("=========================")
        print("Task: String H3")
        addCommas(number: 12344655679)
        print("=========================")
        print("Task: String H4")
        passSecurity(word: "helloCat5!")
        print("=========================")
        print("Task: Collections H1")
        let array3 = ["One", "Two"]
        checkArray(arr: array3, str: "Two")
        print("=========================")
        print("Task: Collections H2")
        keyPrint()
        print("=========================")
        print("Task: Collections H3")
        sorting()
        print("=========================")
        print("Task: Collections H4")
        let dict1 = ["One": 1,
                     "Two": 2]
        let dict2 = ["Three": 3,
                     "Four": 4]
        let doubleDict = ["FirstD": dict1, "SecondD": dict2]
        method3(findHere: doubleDict, wordKey: "One")
    }
// Collections Hard, task 4.
/* Во ViewDidLoad создать словарь внутри которого будет 2 словаря (ключ - строка, значение - словарь). С любыми данными.
    Их мы будем передавать в метод, который напишем. Создать метод который будет принимать как параметры:
    словарь (такого типа как выше) и строку. Данный метод должен вернуть значение которое хранится внутри
    элемента ключ которого был передан как аргумент. */
    
    func method3(findHere: [String: [String: Int]], wordKey: String) -> Int {
        /* Знаком восклицания делается утверждение,
         что значение существует, nil'a не будет. */
        var i = findHere["FirstD"]
        if i![wordKey] == nil {
            var x = findHere["SecondD"]
            print("The key \"\(wordKey)\" opens: \(x![wordKey]!).")
            return (x![wordKey])!
        } else {
            print("The key \"\(wordKey)\" opens: \(i![wordKey]!).")
            return (i![wordKey])!
        }
    }
    
// Collections Hard, task 3.
// сортировка массива не встроенным методом по возрастанию + удалить дубликаты.
    
    func sorting() { // Bubble sorting - разобрала.
        let array4 = [3, 6, 1, 2, 2, 6, 13, 77, 36]
        print("Default array: \(array4).")
        let arrayWithoutDouble = Array(Set(array4))
        print("Delete all doubles from array: \(arrayWithoutDouble).")
        let sorted = NSMutableArray(array: arrayWithoutDouble)
        var sortAboveIndex = arrayWithoutDouble.count
        var swaps = 0
        repeat {
            var lastSwapIndex = 0
            for i in 1..<sortAboveIndex {
                if (sorted[i - 1] as! Int) > (sorted[i] as! Int) {
                    sorted.exchangeObject(at: i, withObjectAt: i-1)
                    lastSwapIndex = i
                    swaps += 1
                }
            }
            sortAboveIndex = lastSwapIndex
                }
        while (sortAboveIndex != 0)
        print("Sorted array: \(sorted as Array).")
    }
    
// Collections Hard, task 2.
// метод который выведет все ключи словаря + метод который выведет все значения словаря.
    
    func keyPrint() {
        let dict = [5: 10,
                    6: 20,
                    7: 30]
        var keysFromDict = [Int]()
        keysFromDict = Array(dict.keys)
        print("Dictionary's keys are: \(keysFromDict).")
        print("Values of dictionary are:")
        for (key, value) in dict {
            print(value)
        }
    }
// Collections Hard, task 1.
/* Создать метод который принимает 2 аргумента: массив строк и просто строку. Метод возвращает true или false
     в зависимости есть ли данный элемент (тот второй аргумент, который строка) в массиве (тот первый аргумент, который массив строк). */
    
    func checkArray(arr: [String], str: String) -> Bool {
        if arr.contains(str) {
            print("Yes, \"\(str)\" is in \(arr).")
            return true
        } else {
            print("No, \"\(str)\" isn't in \(arr).")
            return false
        }
    }
   
// String Hard, task 4.
// проверить пароль на надежность от 1 до 5.
    
    func passSecurity (word: String) {
        var count = 0
        let decimalChar = CharacterSet.decimalDigits
        let decimalRange = word.rangeOfCharacter(from: decimalChar)
        if decimalRange != nil {
            count += 1
        }
        let upperLetter = CharacterSet.uppercaseLetters
        let upperRange = word.rangeOfCharacter(from: upperLetter)
        if upperRange != nil {
            count += 1
        }
        let lowerLetter = CharacterSet.lowercaseLetters
        let lowerRange = word.rangeOfCharacter(from: lowerLetter)
        if lowerLetter != nil {
            count += 1
        }
        let specSymbols = CharacterSet.punctuationCharacters
        let specRange = word.rangeOfCharacter(from: specSymbols)
        if specRange != nil {
            count += 1
        }
        if word.count >= 8 {
            count += 1
        }
        print("Your password is secure for \(count) from 5.")
    }
    
// String Hard, task 3.
// Добавить запятые в строку как их расставляет калькулятор.
    
    func addCommas(number: Int) {
        var stringNumber = String(number)
        let loops = stringNumber.count % 3
        var commas = 0
        var i = 0
        for _ in 0...loops {
            i = i + 3 + commas
            stringNumber.insert(",", at: stringNumber.index(stringNumber.endIndex, offsetBy: -i))
            commas = 1
        }
        print(stringNumber)
    }

// String Hard, task 2.
/* Создать метод который принимает как аргумент строку. Метод выводит строку зеркально, например Ось -> ьсО, Привет -> тевирП.
 не используя reverse (сделать алгоритм самому посимвольно). */
    
    func reverse(word: String) {
        var newWord = ""
        for char in word.characters {
            newWord = "\(char)" + newWord
        }
        print(newWord)
    }
   
// String Hard, task 1.
// Создать метод который будет принимать строку где слитно написано Ваши ИмяФамилия “TungFam" и возвращать строку,  где они будут разделены пробелом.
    
    func withSpace (name: String) {
        let array = Array(name)
        let upperLetter = CharacterSet.lowercaseLetters
        let upperRange = Array(name.components(separatedBy: upperLetter).joined())
        guard let i = upperRange.last else { return }
        if let index = array.index(of: i) {
            let firstName = String(array.prefix(upTo: index))
            let lastName = String(array.suffix(from: index))
            let namyWithSpace = firstName + " " + lastName
            print(namyWithSpace)
        } else {
            print("Sorry, \(array) doesn't have \(i) element.")
        }
    }
    
// Collection easy, task 6.
/* Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст.
 Должно быть 3 элемента (3 пары). Создать метод который будет иметь 2 параметра: словарь (типа “Строка : Целое”) и ключ типа Строка.
 Данный метод должен удалить из полученного (как первый аргумент) словаря элемент ключ которого был передан (как второй аргумент). */
    
    func deleteDictElement(dict: [String: Int], key: String) {
        print("Here are \(dict.count) students: \(dict).")
        var newStudents = dict
        newStudents.removeValue(forKey: key)
        print("Here are \(newStudents.count) students: \(newStudents) without \(key).")
    }
    
// Collection easy, task 5.
/* Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст.
 Должно быть 3 элемента (3 пары). Добавить в данный словарь еще 2 новых элемента. */
    
    func dictionary() {
        var kids = ["Ivan": 3,
                    "Max": 5,
                    "Anna": 8]
        print("Here are 3 kids: \(kids).")
        kids.updateValue(6, forKey: "Oleg")
        kids.updateValue(3, forKey: "Marina")
        // One more way to add new elements to the dictionary:
        // kids["Sasha"] = 10
        // kids["Natasha"] = 9
        print("And we add two new kids: \(kids).")
    }
   
// Collection easy, task 4.
/* Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив.
 Метод должен возвращать массив который состоит из первого и последнего элемента массива, который был параметром. */
    
    func method2(element: [String]) {
        let lastItem = element[2]
        let newArray = [element[0], lastItem]
        print(newArray)
    }
// Collection easy, task 3.
/* Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив.
 Метод должен выводить в консоль элементы массива (по одному в одной строке). */
    
    func method1(element:[String]) {
        for i in element {
            print(i)
        }
    }
 
// Collection easy, task 2.
// Создать 2 массива со значениями типа Int. Сделать соединение данных массивов. Результат вывести в консоль.
    
    func merge() {
        let array1 = [2, 3, 5]
        let array2 = [11, 73, 4]
        let mergedArray = array1 + array2
        print("The array of two other: \(mergedArray).")
    }
    
// Collection easy, task 1.
// Создать массив со значениями типа Int. Выполнить удаление всех элементов массива.
    
    func deleteElements() {
        var array = [0, 2, 86, 94, 3]
        array.removeAll()
        print("Array is empty.")
    }

// String easy, task 3.
/* Создать строку с именем и своим отчеством. Создать метод который проверит его на окончание “ич/на”.
 Выводит “М” или “Ж” в зависимости от окончания. Также учитывать регистр букв, то есть ИЧ или Ич или На и тд. */
    
    func checkEndOfString() {
        let name = "Ксения АлександровИЧ"
        let silentName = name.lowercased()
        let endIndex = silentName.index(silentName.endIndex, offsetBy: -2)
        let end = String(silentName.suffix(from: endIndex))
        if end == "на" {
            print("\(name) is Ж.")
        } else if end == "ич" {
            print("\(name) is М.")
        }
    }

// String easy, task 2.
/* Написать метод который принимает 2 слова, например имя и фамилию,
    возвращает юзернейм который имеет буквы нижнего регистра и разделяет имя и фамилию символом “_”. */
    
    func userName(firstName: String, lastName: String) {
        let silentName = firstName.lowercased()
        let silentLast = lastName.lowercased()
        print("My user name is \(silentName)_\(silentLast)")
    }

// String easy, task 1.
// Создать строку со своим именем. Написать метод который получает это имя и возвращает кол-во символов в строке с вашим именем.
    
    func countChars(name: String) {
        let amountChar = name.count
        print("Name \(name) has \(amountChar) characters.")
    }
    
// Class task.
// Написать метод, в который передается номер дня (1-7) и в консоль выводится день недели + UPD.
    
    func dayNumber(number: Int) {
        let week = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
        let result = number % 7
        if result == 0 {
            print("\(number) is \(week[0]).")
            
        } else {
        print("\(number) is \(week[result]).")
        }
    }

}

