//
//  ViewController.swift
//  idm362-dnt39
//
//  Created by Devin Taylor on 1/24/21.
//

import UIKit
// Add audio and video library
import AVFoundation

var myAudioPlayerObj = AVAudioPlayer()

class ViewController: UIViewController {
    
    var toggleFlag: Bool = true
    
    @IBOutlet weak var timeBtn: UIButton!
    
    @IBAction func timeBtnFun(_ sender: Any) {
        if (toggleFlag == true) {
            print("Toggle ON")
            breatheAnim.startAnimating()
            myAudioPlayerObj.play()
            timeBtn.backgroundColor = UIColor.init(named: "StartAnim")
            toggleFlag = false
        } else {
            print("Toggle OFF")
            breatheAnim.stopAnimating()
            myAudioPlayerObj.stop()
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
        
        let mySound = Bundle.main.path(forResource: "sounds/breathe", ofType: "mp3")
        
        do {
            myAudioPlayerObj = try
            AVAudioPlayer(contentsOf: URL(fileURLWithPath: mySound!))
            myAudioPlayerObj.prepareToPlay()
            print("Sound file loaded and prepped")
        } catch {
            print(error)
        }
    } // viewDidLoad
    
    
    @IBAction func playStopBreathe(_ sender: Any) {
        print("playStopBreathe called")
//        if (myAudioPlayerObj.isPlaying) {
////            myAudioPlayerObj.stop()
//        } else {
////            myAudioPlayerObj.play()
//        }
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
    
} // ViewController
