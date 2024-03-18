//
//  ViewController.swift
//  imageView
//
//  Created by Hanitha Dhavileswarapu on 3/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessagedTapped(_ sender: Any) {
        labelName.text = "Hi There"
        labelName.textColor = .cyan
    }
    


}

