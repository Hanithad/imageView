//
//  ViewController.swift
//  imageView
//
//  Created by Hanitha Dhavileswarapu on 3/18/24.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var imagePicture: UIImageView!
    
    // here imageNumber and message Number zero by default - in repeat loop it has to go atleast once - if zero its not possible - trick to set -1 or any number between message.count - 1 or totalNumberOfImages - 1 - because if we click the button if  the first one is zero - it will not go so set the value which is not in message.count - 1 or totalNumberOfImages - 1
//    var imageNumber = 0
//    var messageNmunber = 0
    var imageNumber = -1
    var messageNmunber = -1
    var soundNumber = -1
    let totalNumberofSounds = 3
    let totalNumberOfImages = 3
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelName.text = ""
    }
    
    func playSound(name: String){
        if let sound = NSDataAsset(name: name){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch{
                print("Error: \(error.localizedDescription) could nnot initaliser avaudioplayer")
            }
        }else {
                print("Havent found the file sound0")
            }
        }
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int)-> Int{
        var newNumber : Int
        repeat{
            newNumber = Int.random(in: 0...upperLimit)
        }while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func showMessagedTapped(_ sender: Any) {
        let messages = ["Namaste", "welcome to India", "How are you today", "Fabulos?"]
        
       
      //created a function so  it doesnt repeat the whole thing
        
        
        //var newMesssageNumber = Int.random(in: 0...messages.count-1) in while loop not in repeat loop
//        var newMesssageNumber : Int
//        repeat{
//            newMesssageNumber = Int.random(in: 0...messages.count-1)
//        }while messageNmunber == newMesssageNumber
//        messageNmunber = newMesssageNumber
        messageNmunber = nonRepeatingRandom(originalNumber: messageNmunber, upperLimit: messages.count-1)
        labelName.text = messages[messageNmunber]
        
        
        //var newImageNumber = Int.random(in:0...totalNumberOfImages-1) in while loop not in repeat loop
//        var newImageNumber : Int
//        repeat{
//            newImageNumber = Int.random(in: 0...totalNumberOfImages-1)
//        }while imageNumber == newImageNumber
//        imageNumber = newImageNumber
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages-1)
        imagePicture.image = UIImage(named: "image\(imageNumber)")
        
        
        //        var newsoundNumber : Int
        //        repeat{
        //            newSoundNumber = Int.random(in: 0...totalNumberOfSounds-1)
        //        }while soundNumber == newSoundNumber
        //        soundNumber = newSoundNumber
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberofSounds-1)
        playSound(name: "sound\(soundNumber)")
    }
        
}
    




