//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by NATSUYA YAMASHIRO on 2019/11/09.
//  Copyright © 2019 natsuya.yamashiro. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var x = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = x

    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
