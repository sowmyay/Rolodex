//
//  DateLabel.swift
//  Udacity
//
//  Created by sowmya yellapragada on 11/26/17.
//  Copyright © 2017 sowmya.yellapragada. All rights reserved.
//

import UIKit

class DateLabel: UILabel {

    @IBInspectable var oldFormat:String?
    @IBInspectable var newFormat:String?
    
    override var text: String? {
        set {
            if let count = newValue?.count, count > 0 {
                
                let formatter = DateFormatter()
                let locale = Locale(identifier: "en_US_POSIX")
                formatter.locale = locale
                
                formatter.dateFormat = self.oldFormat
                let date = formatter.date(from: newValue!)
                
                if date != nil {
                    formatter.dateFormat = self.newFormat
                    let stringDate = formatter.string(from: date!)
                    
                    super.text = "Since: " + stringDate
                }
            }
        }
        get {
            return super.text
        }
    }
}
