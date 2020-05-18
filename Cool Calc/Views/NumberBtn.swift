//
//  NumberBtn.swift
//  Cool Calc
//
//  Created by Gabriel Parra on 17/05/20.
//  Copyright © 2020 Gabitron. All rights reserved.
//

import UIKit
@IBDesignable
class NumberBtn: UIButton {
    
    override func prepareForInterfaceBuilder() {
               customizeView()
       }
       
       override func awakeFromNib() {
           super.awakeFromNib()
           customizeView()
       }
    func customizeView(){
        backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        layer.cornerRadius = 20
        layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.shadowOpacity = 0.9
        layer.shadowOffset = CGSize(width: 0, height: 5.0)
        layer.shadowRadius = 3
        titleLabel?.font = UIFont(name: "Avenir", size: 30)
      
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
