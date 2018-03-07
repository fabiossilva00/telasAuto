//
//  CustomLabels.swift
//  consultaI
//
//  Created by Andre Cabral on 24/10/17.
//  Copyright © 2017 Ponto Certo. All rights reserved.
//

import UIKit

@IBDesignable
class CustomLabels: UITextField {
    
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
    
    @IBInspectable var leftImage: UIImage?{
        didSet{
            updateView()
        }
    }
    @IBInspectable var leftPadding: CGFloat = 0 {
        didSet{
            updateView()
        }
    }
    func updateView() {
        if let image = leftImage {
            leftViewMode = .always
            
            let imageView = UIImageView(frame: CGRect(x: leftPadding, y: 0, width: 20, height: 20))
            imageView.image = image
            
            let width = leftPadding + 20
            
            let view = UIView(frame: CGRect(x:0, y:0, width:25 , height:20 ))
            view.addSubview(imageView)
            
            leftView = view
        } else{
            leftViewMode = .never
        }
        attributedPlaceholder = NSAttributedString(string: placeholder != nil ? placeholder! : "", attributes: [NSAttributedStringKey.foregroundColor: tintColor])
        /*
         // Only override draw() if you perform custom drawing.
         // An empty implementation adversely affects performance during animation.
         override func draw(_ rect: CGRect) {
         // Drawing code
         }
         */
        
    }
}

