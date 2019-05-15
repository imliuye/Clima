//
//  ViewController.swift
//  Clima
//
//  Created by 刘烨 on 13/5/19.
//  Copyright © 2019 jeannie190321. All rights reserved.
//

import UIKit
import CoreLocation
import Alamofire
import SwiftyJSON

class WeatherViewController: UIViewController, CLLocationManagerDelegate
    //, ChangeWeatherDelegate
{
    
    let url = "http://api.openweathermap.org/data/2.5/weather"
    let APP_ID = "3eb85a6aa5b7d426a31337297edeb5b5"

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    let locationManager = CLLocationManager()
    let weatherDataModel = WeatherDataModel()
    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }
    
    func getWeatherData(url: String, parameters: [String:String]) {
        
    }

}

