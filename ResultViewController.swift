//
//  ResultViewController.swift
//  slideshowApp
//
//  Created by 小田倉真弘 on 2017/09/03.
//  Copyright © 2017年 masahiro.odakura. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var x:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    let index2=x
        
    bicImageView.image=UIImage(named: imageNames[index2] )
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBOutlet weak var bicImageView: UIImageView!
    
    let imageNames: [String]=["IMG_0234.jpg","IMG_0236.jpg","IMG_0239.jpg"];

    
    
    
    
    
    

    @IBAction func returnButton(_ sender: Any) {
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
