//
//  ViewController.swift
//  telasAuto
//
//  Created by Fabio Sousa da Silva on 05/03/2018.
//  Copyright © 2018 Fabio Sousa da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stackLogin: UIStackView!
    @IBOutlet weak var stackButtons: UIStackView!
    @IBOutlet weak var nomeText: UITextField!
    
    let screen = UIScreen.main.bounds
    
    //0 - Stack Login
    //1 - Stack Buttons
    
    func tamanhoHeight() -> Array<Int> {
        let screenHeight = screen.height
        
        switch screenHeight {
        case 568:
            return [13, 26]
        case 667:
            return [19, 33]
        case 812:
            return [21, 53]
        case 736:
            return [27, 37]
        default:
            return [13, 10]
        }
        
    }
    
    func atualizaTela() {
        
        let tamanho = tamanhoHeight()
        
        stackLogin.spacing = CGFloat(CFloat(tamanho[0]))
        stackButtons.spacing = CGFloat(CFloat(tamanho[1]))
        nomeText.layer.cornerRadius = 20
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        atualizaTela()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

