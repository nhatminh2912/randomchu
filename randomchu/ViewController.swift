//
//  ViewController.swift
//  randomchu
//
//  Created by ios on 11/15/16.
//  Copyright © 2016 ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn_1: UIButton!
    @IBOutlet weak var btn_2: UIButton!
    @IBOutlet weak var btn_3: UIButton!
    @IBOutlet weak var btn_4: UIButton!
    @IBOutlet weak var btn_5: UIButton!
    @IBOutlet weak var btn_6: UIButton!
    @IBOutlet weak var btn_7: UIButton!
    @IBOutlet weak var btn_8: UIButton!
    @IBOutlet weak var btn_9: UIButton!
    @IBOutlet weak var btn_10: UIButton!
    @IBOutlet weak var btn_11: UIButton!
    @IBOutlet weak var btn_12: UIButton!
    @IBOutlet weak var chudachon: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hienthirandom()
        let animalIndex = Int(arc4random_uniform(UInt32(randomanimal.count)))
        animallabel.text = randomanimal[animalIndex]
        // Do any additional setup after loading the view, typically from a nib.
    }
    var dapan = ""
    var count = 0
    var randomanimal = ["dog", "cat", "mouse", "horse"]
    
    var randomletter = ["t", "o", "d", "c", "g", "a", "m", "u", "s", "e", "h", "r"]
    @IBOutlet weak var animallabel: UILabel!
    
    
    @IBAction func dapan(_ sender: UIButton) {
        count += 1

        
        print("count \(count)")
        if sender.tag == 1
        {
            dapan = dapan + btn_1.title(for: .normal)!
        }
        else if sender.tag == 2
        {
            dapan = dapan + btn_2.title(for: .normal)!
           
        }
        else if sender.tag == 3
        {
            dapan = dapan + btn_3.title(for: .normal)!
        }
        else if sender.tag == 4
        {
            dapan = dapan + btn_4.title(for: .normal)!
        }
        else if sender.tag == 5
        {
            dapan = dapan + btn_5.title(for: .normal)!
        }
        else if sender.tag == 6
        {
            dapan = dapan + btn_6.title(for: .normal)!
        }
        else if sender.tag == 7
        {
            dapan = dapan + btn_7.title(for: .normal)!
        }
        else if sender.tag == 8
        {
            dapan = dapan + btn_8.title(for: .normal)!
        }
        else if sender.tag == 9
        {
            dapan = dapan + btn_9.title(for: .normal)!
        }
        else if sender.tag == 10
        {
            dapan = dapan + btn_10.title(for: .normal)!
        }
        else if sender.tag == 11
        {
            dapan = dapan + btn_11.title(for: .normal)!
        }
        else
        {
            dapan = dapan + btn_12.title(for: .normal)!
        }
         chudachon.text = dapan
        
        if animallabel.text?.characters.count == count {
            btn_1.isEnabled = false
            btn_2.isEnabled = false
            btn_3.isEnabled = false
            btn_4.isEnabled = false
            btn_5.isEnabled = false
            btn_6.isEnabled = false
            btn_7.isEnabled = false
            btn_8.isEnabled = false
            btn_9.isEnabled = false
            btn_10.isEnabled = false
            btn_11.isEnabled = false
            btn_12.isEnabled = false
            }
        
        if animallabel.text == chudachon.text{
            print("Đúng")
            if animallabel.text == randomanimal[0]
            {
                animallabel.text = randomanimal[1]
            }
            else if animallabel.text == randomanimal[1]
            {
                animallabel.text = randomanimal[2]
            }
            else if animallabel.text == randomanimal[2]
            {
                animallabel.text = randomanimal[3]
            }
            else
            {
                animallabel.text = randomanimal[0]
            }
            hienthirandom()
            dapan = ""
            chudachon.text = ""
            setBtnTrue()
            count = 0
        }
        
        
    }
    @IBAction func xoadapan(_ sender: UIButton) {
        chudachon.text = ""
        dapan = ""
        setBtnTrue()
        count = 0
        hienthirandom()
    }
    
    
    
    func setBtnTrue() {
        btn_1.isEnabled = true
        btn_2.isEnabled = true
        btn_3.isEnabled = true
        btn_4.isEnabled = true
        btn_5.isEnabled = true
        btn_6.isEnabled = true
        btn_7.isEnabled = true
        btn_8.isEnabled = true
        btn_9.isEnabled = true
        btn_10.isEnabled = true
        btn_11.isEnabled = true
        btn_12.isEnabled = true
    }
    
    
    
    
    func hienthirandom() -> Void
    {
        let letterIndex = Int(arc4random_uniform(UInt32(randomletter.count)))
        print("length = \(animallabel.text?.characters.count)")
        if letterIndex == 0
        {
            btn_1.setTitle(String(randomletter[letterIndex]), for: .normal)
            btn_2.setTitle(String(randomletter[letterIndex + 1]), for: .normal)
            btn_3.setTitle(String(randomletter[letterIndex + 2]), for: .normal)
            btn_4.setTitle(String(randomletter[letterIndex + 3]), for: .normal)
            btn_5.setTitle(String(randomletter[letterIndex + 4]), for: .normal)
            btn_6.setTitle(String(randomletter[letterIndex + 5]), for: .normal)
            btn_7.setTitle(String(randomletter[letterIndex + 6]), for: .normal)
            btn_8.setTitle(String(randomletter[letterIndex + 7]), for: .normal)
            btn_9.setTitle(String(randomletter[letterIndex + 8]), for: .normal)
            btn_10.setTitle(String(randomletter[letterIndex + 9]), for: .normal)
            btn_11.setTitle(String(randomletter[letterIndex + 10]), for: .normal)
            btn_12.setTitle(String(randomletter[letterIndex + 11]), for: .normal)
        }
        else if letterIndex == 1
        {
            btn_1.setTitle(String(randomletter[letterIndex]), for: .normal)
            btn_2.setTitle(String(randomletter[letterIndex + 1]), for: .normal)
            btn_3.setTitle(String(randomletter[letterIndex + 2]), for: .normal)
            btn_4.setTitle(String(randomletter[letterIndex + 3]), for: .normal)
            btn_5.setTitle(String(randomletter[letterIndex + 4]), for: .normal)
            btn_6.setTitle(String(randomletter[letterIndex + 5]), for: .normal)
            btn_7.setTitle(String(randomletter[letterIndex + 6]), for: .normal)
            btn_8.setTitle(String(randomletter[letterIndex + 7]), for: .normal)
            btn_9.setTitle(String(randomletter[letterIndex + 8]), for: .normal)
            btn_10.setTitle(String(randomletter[letterIndex + 9]), for: .normal)
            btn_11.setTitle(String(randomletter[letterIndex + 10]), for: .normal)
            btn_12.setTitle(String(randomletter[letterIndex - 1]), for: .normal)
        }
        else if letterIndex == 2
        {
            btn_1.setTitle(String(randomletter[letterIndex]), for: .normal)
            btn_2.setTitle(String(randomletter[letterIndex + 1]), for: .normal)
            btn_3.setTitle(String(randomletter[letterIndex + 2]), for: .normal)
            btn_4.setTitle(String(randomletter[letterIndex + 3]), for: .normal)
            btn_5.setTitle(String(randomletter[letterIndex + 4]), for: .normal)
            btn_6.setTitle(String(randomletter[letterIndex + 5]), for: .normal)
            btn_7.setTitle(String(randomletter[letterIndex + 6]), for: .normal)
            btn_8.setTitle(String(randomletter[letterIndex + 7]), for: .normal)
            btn_9.setTitle(String(randomletter[letterIndex + 8]), for: .normal)
            btn_10.setTitle(String(randomletter[letterIndex + 9]), for: .normal)
            btn_11.setTitle(String(randomletter[letterIndex - 2]), for: .normal)
            btn_12.setTitle(String(randomletter[letterIndex - 1]), for: .normal)
        }
        else if letterIndex == 3
        {
            btn_1.setTitle(String(randomletter[letterIndex]), for: .normal)
            btn_2.setTitle(String(randomletter[letterIndex + 1]), for: .normal)
            btn_3.setTitle(String(randomletter[letterIndex + 2]), for: .normal)
            btn_4.setTitle(String(randomletter[letterIndex + 3]), for: .normal)
            btn_5.setTitle(String(randomletter[letterIndex + 4]), for: .normal)
            btn_6.setTitle(String(randomletter[letterIndex + 5]), for: .normal)
            btn_7.setTitle(String(randomletter[letterIndex + 6]), for: .normal)
            btn_8.setTitle(String(randomletter[letterIndex + 7]), for: .normal)
            btn_9.setTitle(String(randomletter[letterIndex + 8]), for: .normal)
            btn_10.setTitle(String(randomletter[letterIndex - 3]), for: .normal)
            btn_11.setTitle(String(randomletter[letterIndex - 2]), for: .normal)
            btn_12.setTitle(String(randomletter[letterIndex - 1]), for: .normal)
        }
        else if letterIndex == 4
        {
        btn_1.setTitle(String(randomletter[letterIndex]), for: .normal)
        btn_2.setTitle(String(randomletter[letterIndex + 1]), for: .normal)
        btn_3.setTitle(String(randomletter[letterIndex + 2]), for: .normal)
        btn_4.setTitle(String(randomletter[letterIndex + 3]), for: .normal)
        btn_5.setTitle(String(randomletter[letterIndex + 4]), for: .normal)
        btn_6.setTitle(String(randomletter[letterIndex + 5]), for: .normal)
        btn_7.setTitle(String(randomletter[letterIndex + 6]), for: .normal)
        btn_8.setTitle(String(randomletter[letterIndex + 7]), for: .normal)
        btn_9.setTitle(String(randomletter[letterIndex - 4]), for: .normal)
        btn_10.setTitle(String(randomletter[letterIndex - 3]), for: .normal)
        btn_11.setTitle(String(randomletter[letterIndex - 2]), for: .normal)
        btn_12.setTitle(String(randomletter[letterIndex - 1]), for: .normal)
        }
        else if letterIndex == 5
        {
            btn_1.setTitle(String(randomletter[letterIndex]), for: .normal)
            btn_2.setTitle(String(randomletter[letterIndex + 1]), for: .normal)
            btn_3.setTitle(String(randomletter[letterIndex + 2]), for: .normal)
            btn_4.setTitle(String(randomletter[letterIndex + 3]), for: .normal)
            btn_5.setTitle(String(randomletter[letterIndex + 4]), for: .normal)
            btn_6.setTitle(String(randomletter[letterIndex + 5]), for: .normal)
            btn_7.setTitle(String(randomletter[letterIndex + 6]), for: .normal)
            btn_8.setTitle(String(randomletter[letterIndex - 5]), for: .normal)
            btn_9.setTitle(String(randomletter[letterIndex - 4]), for: .normal)
            btn_10.setTitle(String(randomletter[letterIndex - 3]), for: .normal)
            btn_11.setTitle(String(randomletter[letterIndex - 2]), for: .normal)
            btn_12.setTitle(String(randomletter[letterIndex - 1]), for: .normal)
        }
        else if letterIndex == 6
        {
            btn_1.setTitle(String(randomletter[letterIndex]), for: .normal)
            btn_2.setTitle(String(randomletter[letterIndex + 1]), for: .normal)
            btn_3.setTitle(String(randomletter[letterIndex + 2]), for: .normal)
            btn_4.setTitle(String(randomletter[letterIndex + 3]), for: .normal)
            btn_5.setTitle(String(randomletter[letterIndex + 4]), for: .normal)
            btn_6.setTitle(String(randomletter[letterIndex + 5]), for: .normal)
            btn_7.setTitle(String(randomletter[letterIndex - 6]), for: .normal)
            btn_8.setTitle(String(randomletter[letterIndex - 5]), for: .normal)
            btn_9.setTitle(String(randomletter[letterIndex - 4]), for: .normal)
            btn_10.setTitle(String(randomletter[letterIndex - 3]), for: .normal)
            btn_11.setTitle(String(randomletter[letterIndex - 2]), for: .normal)
            btn_12.setTitle(String(randomletter[letterIndex - 1]), for: .normal)
        }
        else if letterIndex == 7
        {
            btn_1.setTitle(String(randomletter[letterIndex]), for: .normal)
            btn_2.setTitle(String(randomletter[letterIndex + 1]), for: .normal)
            btn_3.setTitle(String(randomletter[letterIndex + 2]), for: .normal)
            btn_4.setTitle(String(randomletter[letterIndex + 3]), for: .normal)
            btn_5.setTitle(String(randomletter[letterIndex + 4]), for: .normal)
            btn_6.setTitle(String(randomletter[letterIndex - 7]), for: .normal)
            btn_7.setTitle(String(randomletter[letterIndex - 6]), for: .normal)
            btn_8.setTitle(String(randomletter[letterIndex - 5]), for: .normal)
            btn_9.setTitle(String(randomletter[letterIndex - 4]), for: .normal)
            btn_10.setTitle(String(randomletter[letterIndex - 3]), for: .normal)
            btn_11.setTitle(String(randomletter[letterIndex - 2]), for: .normal)
            btn_12.setTitle(String(randomletter[letterIndex - 1]), for: .normal)
        }
        else if letterIndex == 8
        {
            btn_1.setTitle(String(randomletter[letterIndex]), for: .normal)
            btn_2.setTitle(String(randomletter[letterIndex + 1]), for: .normal)
            btn_3.setTitle(String(randomletter[letterIndex + 2]), for: .normal)
            btn_4.setTitle(String(randomletter[letterIndex + 3]), for: .normal)
            btn_5.setTitle(String(randomletter[letterIndex - 8]), for: .normal)
            btn_6.setTitle(String(randomletter[letterIndex - 7]), for: .normal)
            btn_7.setTitle(String(randomletter[letterIndex - 6]), for: .normal)
            btn_8.setTitle(String(randomletter[letterIndex - 5]), for: .normal)
            btn_9.setTitle(String(randomletter[letterIndex - 4]), for: .normal)
            btn_10.setTitle(String(randomletter[letterIndex - 3]), for: .normal)
            btn_11.setTitle(String(randomletter[letterIndex - 2]), for: .normal)
            btn_12.setTitle(String(randomletter[letterIndex - 1]), for: .normal)
        }
        else if letterIndex == 9
        {
            btn_1.setTitle(String(randomletter[letterIndex]), for: .normal)
            btn_2.setTitle(String(randomletter[letterIndex + 1]), for: .normal)
            btn_3.setTitle(String(randomletter[letterIndex + 2]), for: .normal)
            btn_4.setTitle(String(randomletter[letterIndex - 9]), for: .normal)
            btn_5.setTitle(String(randomletter[letterIndex - 8]), for: .normal)
            btn_6.setTitle(String(randomletter[letterIndex - 7]), for: .normal)
            btn_7.setTitle(String(randomletter[letterIndex - 6]), for: .normal)
            btn_8.setTitle(String(randomletter[letterIndex - 5]), for: .normal)
            btn_9.setTitle(String(randomletter[letterIndex - 4]), for: .normal)
            btn_10.setTitle(String(randomletter[letterIndex - 3]), for: .normal)
            btn_11.setTitle(String(randomletter[letterIndex - 2]), for: .normal)
            btn_12.setTitle(String(randomletter[letterIndex - 1]), for: .normal)
        }
        else if letterIndex == 10
        {
            btn_1.setTitle(String(randomletter[letterIndex]), for: .normal)
            btn_2.setTitle(String(randomletter[letterIndex + 1]), for: .normal)
            btn_3.setTitle(String(randomletter[letterIndex - 10]), for: .normal)
            btn_4.setTitle(String(randomletter[letterIndex - 9]), for: .normal)
            btn_5.setTitle(String(randomletter[letterIndex - 8]), for: .normal)
            btn_6.setTitle(String(randomletter[letterIndex - 7]), for: .normal)
            btn_7.setTitle(String(randomletter[letterIndex - 6]), for: .normal)
            btn_8.setTitle(String(randomletter[letterIndex - 5]), for: .normal)
            btn_9.setTitle(String(randomletter[letterIndex - 4]), for: .normal)
            btn_10.setTitle(String(randomletter[letterIndex - 3]), for: .normal)
            btn_11.setTitle(String(randomletter[letterIndex - 2]), for: .normal)
            btn_12.setTitle(String(randomletter[letterIndex - 1]), for: .normal)
        }
        else
        {
            btn_1.setTitle(String(randomletter[letterIndex]), for: .normal)
            btn_2.setTitle(String(randomletter[letterIndex - 11]), for: .normal)
            btn_3.setTitle(String(randomletter[letterIndex - 10]), for: .normal)
            btn_4.setTitle(String(randomletter[letterIndex - 9]), for: .normal)
            btn_5.setTitle(String(randomletter[letterIndex - 8]), for: .normal)
            btn_6.setTitle(String(randomletter[letterIndex - 7]), for: .normal)
            btn_7.setTitle(String(randomletter[letterIndex - 6]), for: .normal)
            btn_8.setTitle(String(randomletter[letterIndex - 5]), for: .normal)
            btn_9.setTitle(String(randomletter[letterIndex - 4]), for: .normal)
            btn_10.setTitle(String(randomletter[letterIndex - 3]), for: .normal)
            btn_11.setTitle(String(randomletter[letterIndex - 2]), for: .normal)
            btn_12.setTitle(String(randomletter[letterIndex - 1]), for: .normal)
        }
    }
}




