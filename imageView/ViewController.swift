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
    
    
    var imageNumber = 0
    var messageNmunber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelName.text = ""
    }
    
    @IBAction func showMessagedTapped(_ sender: Any) {
        var messages = ["Namaste", "welcome to India", "How are you today"]
        
        messages.append("You are beautiful")
        messages.remove(at: 0)
        
        labelName.text = messages.randomElement()
//        labelName.text = messages[messageNmunber]
//        messageNmunber += 1
//        if messageNmunber == 3{
//            messageNmunber = 0
//        }
        print(imageNumber)
        imagePicture.image = UIImage(named: "image\(imageNumber)")
        imageNumber += 1
        if imageNumber == 3{
            imageNumber = 0
        }
        
        
//        var thereMessage = "Hi There"
//    
//        if labelName.text == thereMessage {
//            labelName.text = "you are awesome"
//            imagePicture.image = UIImage(named: "image1")
//        } else if labelName.text == "you are awesome" {
//            labelName.text = "you are super"
//            imagePicture.image = UIImage(named: "image2")
//        }else{
//            labelName.text = thereMessage
//            imagePicture.image = UIImage(named: "image0")
//        }
    }
        
}
    




