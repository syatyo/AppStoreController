//
//  DemoModel.swift
//  Demo
//
//  Created by 山田良治 on 2019/05/27.
//  Copyright © 2019 syatyo. All rights reserved.
//

import Foundation

struct DemoModel {
    let users: [User]
    
    init(count: Int) {
        users = (0...count).map { _ in User.random() }
    }
    
}

struct User {
    let id: String
    let age: Int
    
    static func random() -> User {
        let base = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let randomEightDigitID = String((0...8).map({ _ in base.randomElement()! }))
        let ageRange: ClosedRange<Int> = 16...80
        let randomAge = ageRange.randomElement()!
        return User(id: randomEightDigitID, age: randomAge)
    }
    
}

extension User: Hashable { }

extension User: Equatable { }
