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
    }
    
    @IBAction func backButtonClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
