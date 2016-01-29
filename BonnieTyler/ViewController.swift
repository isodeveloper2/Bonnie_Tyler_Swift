//
//  ViewController.swift
//  BonnieTyler
//
//  Created by ISO DEVELOPER on 1/28/16.
//  Copyright © 2016 ISO DEVELOPER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var TextField: UITextField!
    @IBOutlet var TextField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let DestViewController : BonnieDetail = segue.destinationViewController as! BonnieDetail
        
//        DestViewController.bonnieSongText = TextField.text!
        let test = BonTye(artist: TextField.text!, title: TextField2.text!)
//          test.artist = TextField.text
//          test.title = TextField2.text
        DestViewController.bonTyes.append(test)
        print("Total item: \(DestViewController.bonTyes.count)")
        print (DestViewController.bonTyes[0].title)
        print (DestViewController.bonTyes[0].artist)
        print (DestViewController.bonTyes[1].title)
        print (DestViewController.bonTyes[1].artist)
        print (DestViewController.bonTyes[2].title)
        print (DestViewController.bonTyes[2].artist)

    }
    
  

}

