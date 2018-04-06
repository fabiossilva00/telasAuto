//
//  TipoCompraViewController.swift
//  telasAuto
//
//  Created by Fabio Sousa da Silva on 26/03/2018.
//  Copyright © 2018 Fabio Sousa da Silva. All rights reserved.
//

import UIKit

class TipoCompraViewController: UIViewController {
    
    @IBOutlet weak var stepLeadindConstraint: NSLayoutConstraint!
    @IBOutlet weak var stepTrainlingConstraint: NSLayoutConstraint!
    @IBOutlet weak var progressBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var progressTopConstraint: NSLayoutConstraint!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        stepLeadindConstraint.constant = 35
        stepTrainlingConstraint.constant = 35
        progressTopConstraint.constant = 5
        progressBottomConstraint.constant = 5
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
