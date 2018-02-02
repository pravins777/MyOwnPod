//
//  ViewController.swift
//  MyTaks
//
//  Created by Namrata Gursale on 30/01/18.
//  Copyright © 2018 TT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pressMeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonActionListner(_ sender: Any) {
        self.pressMeButton.setAsFirstButton()
        let helper = MyHelper()
        helper.displayAlert(title: "Welcome to MyTaks ", msg: "How are you doing")
    }
}

