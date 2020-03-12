//
//  SAButton.swift
//  pricecalculator
//
//  Created by mac on 12/03/2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation
import UIKit

class SAButton:UIButton{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
        setUpButton()
    }
    
    
    func setUpButton(){
        backgroundColor = UIColor.blue
        layer.cornerRadius = frame.size.height/2
        setTitleColor(.white, for: .normal)
    }
}
