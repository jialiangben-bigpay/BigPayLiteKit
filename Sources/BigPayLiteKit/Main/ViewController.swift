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
    
    @IBOutlet weak var bigpayBalanceLbl: UILabel!
    @IBOutlet weak var currencyLbl: UILabel!
    @IBOutlet weak var amountLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        balanceAmount.text = UserProfile().getUserProfile().amount
        
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    func setupUI() {
        bigpayBalanceLbl.font = BigPayFont.font(type: .Regular, size: 20)
        
        currencyLbl.font = BigPayFont.font(type: .Regular, size: 16)
        
        amountLbl.font = BigPayFont.font(type: .SemiBold, size: 36)
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        settingIcon.isUserInteractionEnabled = true
        settingIcon.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        self.navigationController?.popViewController(animated: true)
    }

}



