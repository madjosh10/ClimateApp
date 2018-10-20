//
//  ChangeCityViewController.swift
//  ClimateApp
//
//  Created by Joshua Madrigal on 10/18/18.
//  Copyright © 2018 Joshua Madrigal. All rights reserved.
//

import UIKit

class ChangeCityViewController: UIViewController {


    @IBOutlet weak var changeCityTxtField: UITextField!
    

    @IBAction func getWeatherClicked(_ sender: Any) {
        //1 Get the city name the user entered in the text field
        
        
        //2 If we have a delegate set, call the method userEnteredANewCityName
        
        
        //3 dismiss the Change City View Controller to go back to the WeatherViewController
        
        
    }
    
    @IBAction func backButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
