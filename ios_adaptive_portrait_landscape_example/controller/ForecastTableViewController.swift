//
//  ForecastTableViewController.swift
//  ios_adaptive_portrait_landscape_example
//
//  Created by codexpedia on 2/1/19.
//  Copyright © 2019 codexpedia. All rights reserved.
//

import UIKit

class ForecastTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    var forecasts = [Forecast]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // reigsters the tableview delegates
        tableview.register(UINib(nibName: "ForecastTableViewCell", bundle: nil), forCellReuseIdentifier: "tableCell")
        tableview.delegate = self
        tableview.dataSource = self
        
        // create sample list data
        forecasts = DataFactory.createSampleForecasts()
    }
    
    // MARK - UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecasts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as? ForecastTableViewCell else {
            fatalError("The dequeued cell is not an instance of ForecastTableViewCell.")
        }
        
        let forecast = forecasts[indexPath.row]
        cell.temperatureLabel.text = String(forecast.temperature)
        cell.locationLabel.text = forecast.location
        return cell
    }
    
    // MARK - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let forecastDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "ForecastDetailViewController") as? ForecastDetailViewController {
            forecastDetailViewController.forecast = forecasts[indexPath.row]
            navigationController?.pushViewController(forecastDetailViewController, animated: true)
        }
    }
    
    

}

