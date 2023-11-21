//
//  ViewController.swift
//  LiteSdkSample
//
//  Created by Benjamin Lee on 06/11/2023.
//

import UIKit
import shared

class ViewController: UIViewController {
    @IBOutlet weak var balanceAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        balanceAmount.text = Greeting().getUserProfile().amount
    }

}



