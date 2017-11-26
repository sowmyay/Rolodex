//
//  ReadData.swift
//  Udacity
//
//  Created by sowmya yellapragada on 11/26/17.
//  Copyright © 2017 sowmya.yellapragada. All rights reserved.
//

import Foundation

class ReadData: NSObject {
    var profiles = [Profile]()
    override init() {
        if let path = Bundle.main.path(forResource: "CardData", ofType: "json"){
            
            if let data = try? NSData(contentsOfFile: path, options: .mappedIfSafe){
                let json = try? JSONSerialization.jsonObject(with: data as Data, options: [])
                
                if let jsonArray = json as? NSArray{
                    for item in jsonArray{
                        profiles += [Profile(data: item as! [String : Any])]
                    }
                }
            }
        }
    }
}

class Profile:NSObject{
    var name :String? = nil
    let email:String?
    let company:String?
    let startDate:String?
    let bio :String?
    
    init(data: [String:Any]){
        if let first = data["firstName"] as? String, let last = data["lastName"] as? String{
            self.name = first + " " + last
        }
        self.email = data["email"] as? String
        self.company = data["company"] as? String
        self.startDate = data["startDate"] as? String
        self.bio = data["bio"] as? String
        
    }
}



