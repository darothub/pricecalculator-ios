//
//  ViewController.swift
//  pricecalculator
//
//  Created by mac on 12/03/2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTax: UITextField!
    @IBOutlet weak var total: UILabel!
    
    let backgroundImageView = UIImageView()
    let textSample = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        total.text = ""
        
        setBackground()
    }
    
    
    @IBAction func calculatePrice(_ sender: Any) {

        guard let price = Double(priceTxt.text!) else {
            Double(0)
            return
        }
        guard let salesTax = Double(salesTax.text!) else {
            Double(0)
            return
        }

        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax

        total.text = "NGN\(totalPrice)"

        //        if let price = priceTxt.text{
        //            Double(priceTxt.text!)
        //        }
        //        else{
        //            priceTxt.text = "0"
        //        }
    }
    
    func setBackground(){
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        backgroundImageView.image = UIImage(named: "background")
        view.sendSubviewToBack(backgroundImageView)
    }
    

}

