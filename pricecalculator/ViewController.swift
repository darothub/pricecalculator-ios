//
//  ViewController.swift
//  pricecalculator
//
//  Created by mac on 12/03/2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
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
        
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardwillChange(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardwillChange(notification:)), name: UIResponder.keyboardDidHideNotification, object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardwillChange(notification:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
//    deinit {
//        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
//        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardDidHideNotification, object: nil)
//        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
//    }
    
    @IBAction func calculatePrice(_ sender: Any) {

        guard let price = Double(priceTxt.text!) else {
        
            return
        }
        guard let salesTax = Double(salesTax.text!) else {
        
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
    
    @IBAction func donetwo(_ sender: UIButton) {
        sender.resignFirstResponder()
    }
    @IBAction func done(_ sender:UITextField){
        sender.resignFirstResponder()
    }
    
    func setBackground(){
//        tableView.addSubview(backgroundImageView)
//        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
//        backgroundImageView.topAnchor.constraint(equalTo: tableView.topAnchor).isActive = true
//        backgroundImageView.bottomAnchor.constraint(equalTo: tableView.bottomAnchor).isActive = true
//        backgroundImageView.leadingAnchor.constraint(equalTo: tableView.leadingAnchor).isActive = true
//        backgroundImageView.trailingAnchor.constraint(equalTo: tableView.trailingAnchor).isActive = true
        tableView.backgroundView = UIImageView(image: UIImage(named: "background"))
//        backgroundImageView.image = UIImageView(image: UIImage(named: "background"))
        self.tableView.sendSubviewToBack(backgroundImageView)
    }
//    @objc func keyboardwillChange(notification:Notification){
//        view.frame.origin.y = -200
//    }

}

