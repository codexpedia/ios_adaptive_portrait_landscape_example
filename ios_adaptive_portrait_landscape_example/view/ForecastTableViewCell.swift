//
//  ForecastTableViewCell.swift
//  ios_adaptive_portrait_landscape_example
//
//  Created by Peng on 2/1/19.
//  Copyright © 2019 codexpedia. All rights reserved.
//

import UIKit

class ForecastTableViewCell: UITableViewCell {

    
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
