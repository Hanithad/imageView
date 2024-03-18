//
//  ViewController.swift
//  imageView
//
//  Created by Hanitha Dhavileswarapu on 3/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var imagePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessagedTapped(_ sender: Any) {
        labelName.text = "Hi There"
        imagePicture.image = UIImage(named: "image1")
    }
    


}

