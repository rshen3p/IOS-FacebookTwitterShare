//
//  ViewController.swift
//  SocialShare
//
//  Created by Ricky Chen on 1/24/16.
//  Copyright © 2016 Ricky Chen. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    @IBOutlet var input: UIView!

    @IBOutlet weak var InputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func facebook(sender: AnyObject) {
        let facebook: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        
        facebook.setInitialText(InputField.text)
        facebook.addImage(UIImage(named: "bcit_logo.jpg"))
        self.presentViewController(facebook,animated: true, completion: nil)
    }
    
    @IBAction func twitter(sender: AnyObject) {
        let twitter: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        self.presentViewController(twitter, animated: true, completion: nil)
    }
    

}

