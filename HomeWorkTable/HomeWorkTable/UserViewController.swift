//
//  UserViewController.swift
//  HomeWorkTable
//
//  Created by Nail on 21.10.2020.
//  Copyright © 2020 Nail. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    var user: User!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.name
        cityLabel.text = user.city
        phoneLabel.text = user.phone
        
    }
    

  

}
