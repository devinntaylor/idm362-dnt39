//
//  ViewController.swift
//  idm362-dnt39
//
//  Created by Devin Taylor on 1/24/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var toggleFlag: Bool = true
    
    @IBOutlet weak var timeBtn: UIButton!
    
    @IBAction func timeBtnFun(_ sender: Any) {
        if (toggleFlag == true) {
            timeBtn.tintColor = UIColor.init(named: "AccentColor")
            toggleFlag = true
        } else {
            timeBtn.tintColor = UIColor.init(named: "darkMode")
            toggleFlag = false
        }
    }
    
}

