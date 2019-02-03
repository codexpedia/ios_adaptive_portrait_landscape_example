//
//  ForecastDetailViewController.swift
//  ios_adaptive_portrait_landscape_example
//
//  Created by codexpedia on 2/1/19.
//  Copyright © 2019 codexpedia. All rights reserved.
//

import UIKit

class ForecastDetailViewController: UIViewController {

    var forecast: Forecast?
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let f = forecast {
            locationLabel.text = f.location
            temperatureLabel.text = String(f.temperature)
        }
    }

}
