//
//  ViewController.swift
//  Area Of A Circle
//
//  Created by Jehiel Pather on 28/8/18.
//  Copyright © 2018 NaliniPather. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController, UITextFieldDelegate {
    var bannerView: GADBannerView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.delegate = self
        textField.keyboardType = UIKeyboardType.numbersAndPunctuation
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
       
        return true
       
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        let textFieldFloat = (textField.text as! NSString).floatValue
        let answer: Float = textFieldFloat * textFieldFloat * Float.pi
        answerLabel.text = String(answer)
        print(answer)
    }
    

}

