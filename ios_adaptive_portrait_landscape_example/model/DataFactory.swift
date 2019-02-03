//
//  DataFactory.swift
//  ios_adaptive_portrait_landscape_example
//
//  Created by codexpedia on 2/1/19.
//  Copyright © 2019 codexpedia. All rights reserved.
//

import Foundation

struct DataFactory {
    
    static func createSampleForecasts() -> [Forecast] {
        var forecasts = [Forecast]()
        
        forecasts.append(Forecast(location: "Boston", temperature: 20))
        forecasts.append(Forecast(location: "New York", temperature: 22))
        forecasts.append(Forecast(location: "Philadelphia", temperature: 32))
        forecasts.append(Forecast(location: "Washington DC", temperature: 36))
        forecasts.append(Forecast(location: "Charlotte", temperature: 37))
        forecasts.append(Forecast(location: "Atlanta", temperature: 39))
        forecasts.append(Forecast(location: "Miami", temperature: 52))
        forecasts.append(Forecast(location: "New Orleans", temperature: 55))
        forecasts.append(Forecast(location: "Dallas", temperature: 56))
        forecasts.append(Forecast(location: "Houston", temperature: 57))
        forecasts.append(Forecast(location: "Phoenix", temperature: 58))
        forecasts.append(Forecast(location: "Las Vegas", temperature: 53))
        forecasts.append(Forecast(location: "Los Angeles", temperature: 55))
        forecasts.append(Forecast(location: "Cupertino", temperature: 50))
        forecasts.append(Forecast(location: "San Francisco", temperature: 50))
        forecasts.append(Forecast(location: "Seattle", temperature: 36))
        forecasts.append(Forecast(location: "Portland", temperature: 38))
        forecasts.append(Forecast(location: "Salt Lake City", temperature: 32))
        forecasts.append(Forecast(location: "Denver", temperature: 23))
        forecasts.append(Forecast(location: "Rapid City", temperature: 22))
        forecasts.append(Forecast(location: "Minneapolis", temperature: 10))
        forecasts.append(Forecast(location: "Kansas City", temperature: 16))
        forecasts.append(Forecast(location: "Chicago", temperature: 12))
        forecasts.append(Forecast(location: "Indianapolis", temperature: 14))
        forecasts.append(Forecast(location: "Detroit", temperature: 13))
        forecasts.append(Forecast(location: "Cleveland", temperature: 15))
        forecasts.append(Forecast(location: "Pittsburgh", temperature: 19))
        
        return forecasts
    }
    
}
