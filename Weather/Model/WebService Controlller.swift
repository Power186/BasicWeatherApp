//
//  WebService Controlller.swift
//  Weather
//
//  Created by Power186 on 2/8/20.
//  Copyright © 2020 none. All rights reserved.
//

import Foundation

public enum WebServiceControllerError: Error {
    case invalidURL(String)
    case invalidPayload(URL)
    case forwarded(Error)
}

public protocol WebServiceController {
    func fetchWeatherData(for city: String,
                          completionHandler: @escaping (String?, WebServiceControllerError?) -> Void)
}
