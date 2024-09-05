//
//  HomeVC.swift
//  TextFieldUIKit
//
//  Created by Abouzar Moradian on 9/5/24.
//

import UIKit

class HomeVC: UIViewController {

    var user: UserModel?
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let passedUser = user {
            timeLabel.text = "Last login time: " + formatDateToTimeString(date:   passedUser.time)
            usernameLabel.text = "You logged in as: " + passedUser.username
            nameLabel.text = "Welcome back " + passedUser.name
            
        }
    }




}



func formatDateToTimeString(date: Date) -> String {
    let dateFormatter = DateFormatter()
    
    dateFormatter.dateFormat = "MMM d, yyyy, h:mm:ss a"
    
    let formattedDate = dateFormatter.string(from: date)
    
    return formattedDate
}

