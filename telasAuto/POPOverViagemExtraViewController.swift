//
//  POPOverViagemExtraViewController.swift
//  telasAuto
//
//  Created by Fabio Sousa da Silva on 15/03/2018.
//  Copyright © 2018 Fabio Sousa da Silva. All rights reserved.
//

import UIKit

class POPOverViagemExtraViewController: UIViewController {

   
    @IBOutlet weak var button296: UIButton!
    @IBOutlet weak var button200: UIButton!
    @IBOutlet weak var button400: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Oi")
//        button200.isHidden = true
        button296.isHidden = true
        button400.isHidden = true

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
