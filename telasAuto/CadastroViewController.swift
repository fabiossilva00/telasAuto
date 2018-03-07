//
//  CadastroViewController.swift
//  telasAuto
//
//  Created by Fabio Sousa da Silva on 07/03/2018.
//  Copyright © 2018 Fabio Sousa da Silva. All rights reserved.
//

import UIKit

class CadastroViewController: UIViewController {
    
    @IBOutlet weak var nomeText: UITextField!
    @IBOutlet weak var sexoLabel: UILabel!
    @IBOutlet weak var stackCampos: UIStackView!
    @IBOutlet weak var continuarButton: UIButton!
    
    func atualizaTela() {
        
        let tamanho = tamanhoHeight()
        
        stackCampos.spacing = CGFloat(tamanho[0])
        sexoLabel.font = UIFont.systemFont(ofSize: CGFloat(tamanho[2]))
        nomeText.font = UIFont.systemFont(ofSize: CGFloat(tamanho[1]))
        continuarButton.titleLabel?.font = UIFont.systemFont(ofSize: CGFloat(tamanho[3]))
    }
    
    let screen = UIScreen.main.bounds
    
    //0 - Stack Campos
    //1 - nomeText
    //2 - sexoLabel
    //3 - continuarButton
    
    func tamanhoHeight() -> Array<Int> {
        let screenHeight = screen.height
        
        switch screenHeight {
        case 568: // SE
            return [13, 17, 17, 18]
        case 667: // 8
            return [17, 17, 19, 21]
        case 812: // X
            return [28, 21, 21, 23]
        case 736: // 8 Plus
            return [19, 17, 21, 23]
        default:
            return [9, 14, 14, 15]
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
