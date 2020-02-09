//
//  WeatherViewModel.swift
//  Weather
//
//  Created by Power186 on 2/9/20.
//  Copyright © 2020 none. All rights reserved.
//

import Foundation

class WeatherViewModel: ObservableObject {
    private let weatherService = OpenWeatherMapController()
    
    @Published var weatherInfo = ""
    
    func fetch(city: String) {
        weatherService.fetchWeatherData(for: city) { (info, error) in
            guard error == nil,
            let weatherInfo = info else {
                DispatchQueue.main.async {
                self.weatherInfo = "Couldn't retrieve weather information for the city"
                }
                    return
            }
            DispatchQueue.main.async {
                self.weatherInfo = weatherInfo
            }
        }
    }
    
}
