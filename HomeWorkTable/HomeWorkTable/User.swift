//
//  User.swift
//  HomeWorkTable
//
//  Created by Nail on 21.10.2020.
//  Copyright © 2020 Nail. All rights reserved.
//

import Foundation
import UIKit
  
enum firstWordOfName{
    case A
    case B
    case C
    case D
}

class User: NSObject{
    var name: String
    var city: String
    var phone: String
    var firstWordOfName: firstWordOfName
    init(name:String,city:String,phone:String,firstWordOfName:firstWordOfName) {
        self.name = name
        self.city = city
        self.phone = phone
        self.firstWordOfName = firstWordOfName
    }
    
}
