//
//  User.swift
//  testing_swift
//
//  Sample User class
//  Created by Shoeb Ahmed on 28/03/19.
//  Copyright © 2019 Shoeb Ahmed. All rights reserved.
//

import Foundation

class Users{
    var name: String
    var age: Int

    // Constructor
    init(name: String, age: Int = 0) {
        self.name = name
        self.age = age
    }
    
    // Destructor
    deinit {
        self.name = ""
        self.age = 0
    }
    
    func getName() -> String{
        return self.name
    }
    
    func setName(name: String){
        self.name = name
    }
    
    func getAge() -> Int{
        return self.age
    }
    
    func setAge(age: Int){
        self.age = age
    }
    
}
