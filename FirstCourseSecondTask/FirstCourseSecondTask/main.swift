//
//  main.swift
//  FirstCourseSecondTask
//
//  Copyright © 2017 E-Legion. All rights reserved.
//

import Foundation
import FirstCourseSecondTaskChecker


let checker = Checker()

func First (array: [Int]) -> (even: Int, notEven: Int){
    var counterEven = 0
    var counterNonEven = 0
    for Int in array{
        if Int % 2 == 0{
            counterEven += 1
        }else{
            counterNonEven += 1
        }
    }
    return (counterEven, counterNonEven)
}

func Second (first: [Checker.Circle]) -> ([Checker.Circle]){
    var arrayWhites :[Checker.Circle] = []
    var arrayBlack :[Checker.Circle] = []
    var arrayBlue :[Checker.Circle] = []
    var arrayGreenToBlue :[Checker.Circle] = []
    
    for circle in first {
        var circ = circle
        switch circ.color {
        case .white:
            arrayWhites.append(circ)
        case .black:
            circ.radius *= 2.0
            arrayBlack.append(circ)
        case .red:
            continue
        case .green:
            circ.color = .blue
            arrayBlue.append(circ)
        case .blue:
            arrayBlue.append(circ)
        default:
            continue
        }
    }

    let newArray = arrayWhites + arrayBlack + arrayBlue
    return newArray
}
func Third (first: [Checker.EmployeeData]) -> [Checker.Employee]{
    var result: [Checker.Employee] = []
        for elem in first {
            if elem["salary"] != nil && elem["fullName"] != nil && elem["company"] != nil && elem.count == 3 {
                    let add: Checker.Employee = Checker.Employee(fullName: elem["fullName"]!, salary: elem["salary"]!, company: elem["company"]!)
                    result.append(add)
            }
        }
        return result
}

func Fourth (array: [String]) -> [String : [String]]{
    var result = [String: [String]]()
    for elem in array {
        let start = String(elem.prefix(1))
        if  result[start] == nil {
            result[start] = [elem]
            
        } else {
            result[start]?.append(elem)
        }
    }
    for (elem, var names) in result {
        if names.count < 2 {
            result.removeValue(forKey: elem)
        } else {
            let sortedNames = names.sorted { (_ s1: String, _ s2: String) -> Bool in
                return s1 > s2
            }
            result.updateValue(sortedNames, forKey: elem)
        }
    }
    return result
}

checker.checkFirstFunction(function: First)

checker.checkSecondFunction(function: Second)

checker.checkThirdFunction(function: Third)

checker.checkFourthFunction(function: Fourth)
