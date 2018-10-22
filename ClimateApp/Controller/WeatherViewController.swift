//
//  WeatherViewController.swift
//  ClimateApp
//
//  Created by Joshua Madrigal on 10/18/18.
//  Copyright © 2018 Joshua Madrigal. All rights reserved.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController, CLLocationManagerDelegate {
    
    let WEATHER_URL = "ce030962dcc354dbb9fb951f5c70abf9"
    let APP_ID = "e72ca729af228beabd5d20e3b7749713"
    
    
    //TODO: declare instance variable CLLocationManager()
    let locationManager = CLLocationManager()
    
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO: Setting up location manager
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }
    
    
    //MARK: - Networking
    /***************************************************************/
    
    //Write the getWeatherData method here:
    func getWeatherData() {
        
    }

    
    
    //MARK: - JSON Parsing
    /***************************************************************/
    
    
    //Write the updateWeatherData method here:
    func updateWeatherData()  {
        
    }
    
    
    
    
    //MARK: - UI Updates
    /***************************************************************/
    
    
    //Write the updateUIWithWeatherData method here:
    func updateUIWithWeatherData() {
    
    }

    
    //MARK: - Location Manager Delegate Methods
    /***************************************************************/
    
    
    //Write the didUpdateLocations method here:
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[locations.count - 1]
        if location.horizontalAccuracy > 0 {
            locationManager.stopUpdatingLocation()
            print("Location: \(location.coordinate.longitude), Latitude: \(location.coordinate.latitude)")
            
            let lat = String(location.coordinate.latitude)
            let long = String(location.coordinate.longitude)
            let params : [String: String] = ["lat" : lat, "long": long, "appid" : APP_ID]
        }
        
        
    }
    
    //Write the didFailWithError method here:
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
        cityLabel.text = "Location Unavailable"
        
    }
    
    
    //MARK: - Change City Delegate methods
    /***************************************************************/
    
    
    //Write the userEnteredANewCityName Delegate method here:
    func userEnteredANewCityName() {
        
    }
    
    
    //Write the PrepareForSegue Method here
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }


} // end WVC Class

