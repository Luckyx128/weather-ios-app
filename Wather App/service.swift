//
//  service.swift
//  Wather App
//
//  Created by Lucas de Amorim on 22/04/26.
//
import Foundation
struct City {
    let lat: String
    let lon: String
    let name: String
}

class Service {
    private let baseUrl: String = "https://api.openweathermap.org/data/3.0/onecall"
    private let apiKey: String = "05b1961aa3c5e27751dd1af4ee134ae8"
    private let session = URLSession.shared
    
    func fetchData(city:City ,_ completion:@escaping (String) -> Void) {
        let urlString =  "?\(baseUrl)?lat=\(city.lat)&lon=\(city.lon)&appid=\(apiKey)"
        
        guard let url = URL(string: urlString) else {return}
        
        let task = session.dataTask(with: url) {data,response,erro in
            completion(" OI")
        }
        
        task.resume()
    }
    
}
