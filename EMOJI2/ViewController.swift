//
//  ViewController.swift
//  EMOJI2
//
//  Created by Oliver on 19-04-17.
//  Copyright © 2017 Oliver. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var EmojiView: UITableView!
    
    var emojilist = ["😱","😟","😜","😡","😨","😓","🙏🏿", "💀"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        EmojiView.dataSource = self
        EmojiView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojilist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        print (indexPath.row)
        cell.textLabel?.text = emojilist [indexPath.row]
        return cell
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojilist[indexPath.row]
        performSegue(withIdentifier: "moveseg", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emoVC = segue.destination as! EmojiViewController
        emoVC.emoji = sender as! String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

