//
//  tableTableViewCell.swift
//  ProyectJitsi
//
//  Created by DEV-IOS on 18/02/2020.
//  Copyright © 2020 DEV-IOS. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var BackgroundCell: UIView!
    @IBOutlet weak var nameRoom: UILabel!
    @IBOutlet weak var btnSharedAction: UIButton!
    @IBOutlet weak var btnLiveGo: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
