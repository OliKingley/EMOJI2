//
//  EmojiViewController.swift
//  EMOJI2
//
//  Created by Oliver on 19-04-17.
//  Copyright © 2017 Oliver. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
    
    @IBOutlet weak var StrengthLabel: UILabel!
    
    var emoji = "No EmoJi"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        StrengthLabel.text = emoji
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
