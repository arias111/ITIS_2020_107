//
//  ViewController.swift
//  HomeWorkTable
//
//  Created by Nail on 20.10.2020.
//  Copyright © 2020 Nail. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let cellID = "UserTableViewCell"
    var modelUser = ModelUser()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = modelUser.users[section]
        return section.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return modelUser.users.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "A"
        }
        if section == 1{
            return "B"
        }
        if section == 2{
            return "C"
        }
        if section == 3{
            return "D"
        }
        return ""
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! UserTableViewCell
        let section = modelUser.users[indexPath.section]
        let user = section[indexPath.row]
        cell.nameLabel.text = user.name
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goSegue"{
            let vc = segue.destination as! UserViewController
            let indexPath = sender as! IndexPath
            let section = modelUser.users[indexPath.section]
            let user = section[indexPath.row]
            vc.user = user
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "goSegue", sender: indexPath)
    }
}
