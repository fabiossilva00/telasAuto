//
//  HomeViewController.swift
//  telasAuto
//
//  Created by Fabio Sousa da Silva on 14/03/2018.
//  Copyright © 2018 Fabio Sousa da Silva. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var constraintCompraBottom: NSLayoutConstraint!
    @IBOutlet weak var constraintComprarTop: NSLayoutConstraint!
    
    
    func atualizaTela() {
        
        let tamanho = tamanhoHeight()
        
        constraintCompraBottom.constant = CGFloat(tamanho[0])
        constraintComprarTop.constant = CGFloat(tamanho[1])
    }
    
    
    let screen = UIScreen.main.bounds
    
    //0 - Contraint Comprar Bottom
    //1 - Contraint Comprar Top
    //2 - Constraint Comprar Leading
    //3 - Constraint Top Button
    
    func tamanhoHeight() -> Array<Int> {
        let screenHeight = screen.height
        
        switch screenHeight {
        case 568: // SE
            return [36, 28]
        case 667: // 8
            return [36, 28]
        case 812: // X
            return [65, 28]
        case 736: // 8 Plus
            return [36, 28, 89]
        default:
            return [8, 8]
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
