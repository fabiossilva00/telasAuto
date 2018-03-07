//
//  CustomButton.swift
//  consultaI
//
//  Created by Andre Cabral on 24/10/17.
//  Copyright © 2017 Ponto Certo. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    @IBInspectable
    public var cornerRadius : CGFloat = 0.0
    {
        
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    @IBInspectable
    public var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    @IBInspectable
    public var normalBorderColor : UIColor?{
        didSet{
            self.layer.borderColor = normalBorderColor?.cgColor
        }
    }
    
    
}

