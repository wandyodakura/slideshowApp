//
//  ViewController.swift
//  slideshowApp
//
//  Created by 小田倉真弘 on 2017/09/03.
//  Copyright © 2017年 masahiro.odakura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var timer: Timer!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView.image=UIImage(named: imageNames[index] )
        stopButton2.isEnabled=false
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let resultViewController:ResultViewController=segue.destination as! ResultViewController
        resultViewController.x=index
        
    }
   
    @IBOutlet weak var forwardButton2: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var stopButton2: UIButton!
    @IBOutlet weak var playButton: UIButton!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func warpButton(_ sender: Any) {
        if playButton.isEnabled==false {
            
            self.timer.invalidate()
            self.timer=nil

        }
        
        
        playButton.isEnabled=true
        forwardButton2.isEnabled=true
        backButton.isEnabled=true
        stopButton2.isEnabled=false
    }
    let imageNames: [String]=["IMG_0234.jpg","IMG_0236.jpg","IMG_0239.jpg"];
    
    var index: Int=0
    
    
    @IBAction func forwardButton(_ sender: Any) {
        index += 1
        if index>imageNames.count-1{
            index=0
        }
        imageView.image=UIImage(named: imageNames[index] )
        
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        index -= 1
        if index<imageNames.count-3{
            index=2
        }
        imageView.image=UIImage(named: imageNames[index] )
    }
    
    
    
    
    
    @IBAction func stopButton(_ sender: Any) {
        self.timer.invalidate()
        self.timer=nil
        playButton.isEnabled=true
        forwardButton2.isEnabled=true
        backButton.isEnabled=true
        stopButton2.isEnabled=false
    }
    
    @IBAction func playButton(_ sender: Any) {
        self.timer=Timer.scheduledTimer(timeInterval: 2,target: self,selector: #selector(forwardButton),userInfo: nil, repeats: true)
        playButton.isEnabled=false
        forwardButton2.isEnabled=false
        backButton.isEnabled=false
        stopButton2.isEnabled=true
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
    
    
    
}

