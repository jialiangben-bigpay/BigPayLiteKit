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
    
    @IBOutlet weak var settingIcon: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        balanceAmount.text = Greeting().getUserProfile().amount
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        settingIcon.isUserInteractionEnabled = true
        settingIcon.addGestureRecognizer(tapGestureRecognizer)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        self.navigationController?.popViewController(animated: true)
    }

}



