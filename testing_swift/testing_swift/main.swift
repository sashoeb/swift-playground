//
//  main.swift
//  testing_swift
//
//  Sample Swift code.
//  Created by Shoeb Ahmed on 28/03/19.
//  Copyright © 2019 Shoeb Ahmed. All rights reserved.
//

import Foundation

enum CustomErrors: Error{
    case runtimeError(String)
}

func readUserName() throws -> String{
    print("Please enter your name:")
    let userName = readLine(strippingNewline: true)
    if userName?.count ?? 0 < 1{
        throw CustomErrors.runtimeError("User name not given")
    }
    return userName!
}

func readUserAge() throws -> Int{
    print("Please enter your age:")
    let userAgeString = readLine()
    let userAge = Int(userAgeString!)
    if ( (userAge == nil) || (userAge ?? 0 <= 0) ){
        throw CustomErrors.runtimeError("Invalid age")
    }
    return userAge!
}

func offsetAge(ageNow age: Int, _ offset: Int = 0) -> Int{
    var calculatedAge: Int
    calculatedAge = age + offset;
    return calculatedAge
}

func offsetAgeFromUser(currentUser user: Users, offset: Int = 0) -> Users{
    var calculatedAge: Int
    calculatedAge = user.age + offset
    user.age = calculatedAge
    return user
}

do{
    let ageOffset = -1;
    var user = try Users(name: readUserName(), age: readUserAge())
    print("Hello \(user.name)!")
    print("You are \(user.age) years of age!")
    print("In \(ageOffset) years, you will be \(offsetAge(ageNow: user.age, ageOffset)) years of age!")
    user = offsetAgeFromUser(currentUser: user, offset: 10)
    print("\(user.name) is \(user.age) years old now!")
}catch CustomErrors.runtimeError(let error_msg){
    print(error_msg)
}
