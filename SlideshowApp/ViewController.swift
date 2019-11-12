//
//  ViewController.swift
//  SlideshowApp
//
//  Created by NATSUYA YAMASHIRO on 2019/11/08.
//  Copyright © 2019 natsuya.yamashiro. All rights reserved.
//
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var gazou: UIImageView!
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var imageButton: UIButton!
    
    @IBOutlet weak var button: UIButton!

    
    var imageIndex = 0
    var timer: Timer!
    var timer_sec: Float = 0
    
    let images = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let imageView = images[0]
        gazou.image = imageView
    }
    
    @IBAction func nextGazou(_ sender: Any) {
        
        if imageIndex == 2 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        gazou.image = images[imageIndex]
        
    }
    
    @IBAction func prevGazou(_ sender: Any) {
        
        if imageIndex == 0 {
            imageIndex = 2
        } else {
            imageIndex -= 1
        }
        gazou.image = images[imageIndex]
        
    }
    
    @IBAction func startStop(_ sender: Any) {
        
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            button.setTitle("一時停止", for: .normal)
            backButton.isEnabled = false
            nextButton.isEnabled = false
        } else {
            if self.timer == nil {
                self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            } else {
                if timer.isValid == true {
                    timer.invalidate()
                    button.setTitle("再生", for: .normal)
                    backButton.isEnabled = true
                    nextButton.isEnabled = true
                } else {
                    self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
                    button.setTitle("一時停止", for: .normal)
                    backButton.isEnabled = false
                    nextButton.isEnabled = false
                }
            }
        }
        
    }
    
    
    @objc func updateTimer(_ timer: Timer) {
        
        self.timer_sec += 2
        
        if imageIndex == 2 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        gazou.image = images[imageIndex]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているxに値を代入して渡す
        resultViewController.x = gazou.image!
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // 他の画面から segue を使って戻ってきた時に呼ばれる
    }
    
    @IBAction func imageButton(_ sender: Any) {
        
        
        
        
                if timer.isValid == true {
                    timer.invalidate()
                    button.setTitle("再生", for: .normal)
                    backButton.isEnabled = true
                    nextButton.isEnabled = true
               
            }
        }


    

}
