//
//  ViewController.swift
//  Udacity
//
//  Created by sowmya yellapragada on 11/26/17.
//  Copyright © 2017 sowmya.yellapragada. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    var profiles = [Profile]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        readInData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return profiles.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfileCell", for: indexPath) as! ProfileCell
        cell.config(data: profiles[indexPath.row])
        return cell
    }
    
    func readInData(){
        self.profiles = ReadData().profiles
        self.collectionView.reloadData()
        print(profiles[0].startDate)
        
    }

}

