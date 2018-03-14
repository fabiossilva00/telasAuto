//
//  CadastroBilheteViewController.swift
//  telasAuto
//
//  Created by Fabio Sousa da Silva on 08/03/2018.
//  Copyright © 2018 Fabio Sousa da Silva. All rights reserved.
//

import UIKit

class CadastroBilheteViewController: UIViewController {
    
    @IBOutlet weak var stackCampos: UIStackView!
    @IBOutlet weak var stackGeral: UIStackView!
    @IBOutlet weak var constraintBottom: NSLayoutConstraint!
    @IBOutlet weak var constraintTop: NSLayoutConstraint!
    
    func atualizaTela() {
        let tamanho = tamanhoHeight()
        
        stackCampos.spacing = CGFloat(tamanho[0])
        stackGeral.spacing = CGFloat(tamanho[1])
        constraintBottom.constant = CGFloat(tamanho[2])
        constraintTop.constant = CGFloat(tamanho[3])
        
        let uniqueID = NSUUID().uuidString
        print(uniqueID)
        
    }
    
    let screen = UIScreen.main.bounds
    
    //0 - Stack Campos
    //1 - Stack Geral
    //2 - Constraint Bottom Button
    //3 - Constraint Top Button
    
    func tamanhoHeight() -> Array<Int> {
        let screenHeight = screen.height
        
        switch screenHeight {
        case 568: // SE
            return [13, 25, 61, 29]
        case 667: // 8
            return [16, 27, 65, 36]
        case 812: // X
            return [27, 42, 71, 56]
        case 736: // 8 Plus
            return [27, 16, 68, 46]
        default:
            return [13, 11, 35, 27]
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        atualizaTela()
        
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
