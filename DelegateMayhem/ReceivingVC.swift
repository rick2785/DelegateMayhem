//
//  ReceivingVC.swift
//  DelegateMayhem
//
//  Created by Rickey Hrabowskie on 9/23/16.
//  Copyright © 2016 Rickey Hrabowskie. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSentDelegate {
    
    @IBOutlet weak var receivingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func userDidEnterData(data: String) {
        receivingLabel.text = data 
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }

}

