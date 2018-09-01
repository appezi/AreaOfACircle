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
        bannerView = GADBannerView(adSize: kGADAdSizeBanner)
        
        addBannerViewToView(bannerView)
        bannerView.adUnitID = "ca-app-pub-4069619721899677/1442190717"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
     
        
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
    func addBannerViewToView(_ bannerView: GADBannerView) {
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bannerView)
        view.addConstraints(
            [NSLayoutConstraint(item: bannerView,
                                attribute: .bottom,
                                relatedBy: .equal,
                                toItem: bottomLayoutGuide,
                                attribute: .top,
                                multiplier: 1,
                                constant: 0),
             NSLayoutConstraint(item: bannerView,
                                attribute: .centerX,
                                relatedBy: .equal,
                                toItem: view,
                                attribute: .centerX,
                                multiplier: 1,
                                constant: 0)
            ])
    }
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        // Add banner to view and add constraints as above.
        addBannerViewToView(bannerView)
    }
    

}

