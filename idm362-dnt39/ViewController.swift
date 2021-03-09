//
//  ViewController.swift
//  idm362-dnt39
//
//  Created by Devin Taylor on 1/24/21.
//

import UIKit

class ViewController: UIViewController {
    
    var toggleFlag: Bool = true
    
    @IBOutlet weak var timeBtn: UIButton!
    
    @IBAction func timeBtnFun(_ sender: Any) {
        if (toggleFlag == true) {
            print("Toggle ON")
            breatheAnim.startAnimating()
            timeBtn.backgroundColor = UIColor.init(named: "StartAnim")
            toggleFlag = false
        } else {
            print("Toggle OFF")
            breatheAnim.stopAnimating()
            timeBtn.backgroundColor = UIColor.init(named: "StopAnim")
            toggleFlag = true
        }
    }
    
    @IBOutlet weak var breatheAnim: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do after loading.
        breatheAnim.animationImages = loadImages(for: "BreatheSequence")
        breatheAnim.animationDuration = 10
        breatheAnim.animationRepeatCount = 6
        breatheAnim.image = breatheAnim.animationImages?.first
    }
    
    func loadImages(for name: String) -> [UIImage] {
        print("Animated Images Loader Called")
        var images = [UIImage]()
        var lp = 1
        print("image array before \(images)")
        while let image = UIImage(named: "\(name)/\(lp)") {
            images.append(image)
            lp += 1
        }
        print("image array after \(images)")
        return images
    }
    
}
