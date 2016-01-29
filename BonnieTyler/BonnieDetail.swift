//
//  BonnieDetail.swift
//  BonnieTyler
//
//  Created by ISO DEVELOPER on 1/28/16.
//  Copyright © 2016 ISO DEVELOPER. All rights reserved.
//

import Foundation
import UIKit

class BonnieDetail : UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var bonnieSong: UILabel!
    
    var bonnieSongText = String()
    
    var bonTyes:[BonTye] = [
        BonTye(artist: "Bonnie Tyler", title: "Total Eclipse of the Heart"),
        BonTye(artist: "Bonnie Tyler", title: "Total Eclipse of the Heart Remix")
    ]
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) ->
        Int {
        
        return bonTyes.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier,
        forIndexPath: indexPath)
        // Configure the cell...
        cell.textLabel?.text = bonTyes[indexPath.row].artist
        cell.textLabel?.text = bonTyes[indexPath.row].title
        return cell
    }
    
    override func viewDidLoad() {
       

    }
    
    
}