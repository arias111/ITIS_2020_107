//
//  ModelUser.swift
//  HomeWorkTable
//
//  Created by Nail on 21.10.2020.
//  Copyright © 2020 Nail. All rights reserved.
//

import Foundation
import UIKit

class ModelUser {
    var users = [[User]]()
    init() {
        setup()
    }
    func setup(){
        let user1 = User(name: "Andrey Ivanov", city: "Kazan", phone: "89849449494", firstWordOfName: .A)
        let user2 = User(name: "Aleksey Petrov", city: "Moscow", phone: "89849449494", firstWordOfName: .A)
        let aUsers = [user1,user2]
        let user3 = User(name: "Boris Da", city: "Peter", phone: "89849449494", firstWordOfName: .B)
        let user4 = User(name: "Bulat Galiev", city: "London", phone: "89849449494", firstWordOfName: .B)
        let user5 = User(name: "Bulat Vafin", city: "Novgorod", phone: "89849449494", firstWordOfName: .B)
        let bUsers = [user3,user4,user5]
        let user6 = User(name: "Cergey Ivanov", city: "Chelny", phone: "89849449494", firstWordOfName: .C)
        let user7 = User(name: "Calvin FF", city: "Paris", phone: "89849449494", firstWordOfName: .C)
        let user8 = User(name: "Calvin AA", city: "Gorod1", phone: "89849449494", firstWordOfName: .C)
        let cUsers = [user6,user7,user8]
        let user9 = User(name: "Dima RR", city: "Gorod2", phone: "89849449494", firstWordOfName: .D)
        let user10 = User(name: "Dmitriy NN", city: "Gorod3", phone: "89849449494", firstWordOfName: .D)
        let dUsers = [user9,user10]
        
         users.append(aUsers)
         users.append(bUsers)
         users.append(cUsers)
         users.append(dUsers)
         
    }
}
