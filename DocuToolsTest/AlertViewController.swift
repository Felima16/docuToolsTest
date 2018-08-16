//
//  AlertViewController.swift
//  DocuToolsTest
//
//  Created by Fernanda de Lima on 15/08/2018.
//  Copyright © 2018 FeLima. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func alertView(_ sender: Any) {
        NSLog("Alert View", [])
        
        let alert = UIAlertController(title: "DocuTools", message: "teste para vaga ios no alert", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Okay", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(ok)
        alert.addAction(cancel)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func actionSheet(_ sender: Any) {
        NSLog("Action Sheet", [])
        
        let action = UIAlertController(title: "DocuTools", message: "teste para vaga ios no action", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "Okay", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        action.addAction(ok)
        action.addAction(cancel)
        self.present(action, animated: true, completion: nil)
    }
    
}
