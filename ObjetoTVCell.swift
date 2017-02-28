//
//  ObjetoTVCell.swift
//  Tarea 3
//
//  Created by Rocío Córdova on 26/02/17.
//  Copyright © 2017 Rocío Córdova. All rights reserved.
//

import UIKit

class ObjetoTVCell: UITableViewCell {
    
    
    @IBOutlet weak var lblLugar: UILabel!

    @IBOutlet weak var lblDireccion: UILabel!
    
    @IBOutlet weak var lblNumero: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
