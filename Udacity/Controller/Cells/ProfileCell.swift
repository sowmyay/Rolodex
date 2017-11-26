//
//  ProfileCell.swift
//  Udacity
//
//  Created by sowmya yellapragada on 11/26/17.
//  Copyright © 2017 sowmya.yellapragada. All rights reserved.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var companyLbl: UILabel!
    @IBOutlet weak var sinceLbl: DateLabel!
    @IBOutlet weak var bioLbl: UILabel!
    
    func config(data:Profile){
        self.nameLbl.text = data.name
        self.emailLbl.text = data.email
        self.companyLbl.text = data.company
        self.sinceLbl.text = data.startDate
        self.bioLbl.text = data.bio
    }
    
}
