//
//  ViewController.swift
//  Tarea 3
//
//  Created by Rocío Córdova on 26/02/17.
//  Copyright © 2017 Rocío Córdova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var direc = ""
    
   
    @IBOutlet weak var lblDireccion: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lblDireccion.text = direc
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

