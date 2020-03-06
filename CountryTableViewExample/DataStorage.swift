//
//  DataStorage.swift
//  CountryTableViewExample
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 moxDroid. All rights reserved.
//

import Foundation
import UIKit

class DataStorage
{
    private static let instance = DataStorage()
    private lazy var countryList: [Country] = []
    
    private init(){}
    
    static func getInstance() -> DataStorage {
        return instance
    }
    
    func addCountry(country: Country){
        self.countryList.append(country) //USE DICTIONARY AND RETURN ARRAY
    }
    
    func getAllCountries() -> [Country]{
        return self.countryList
    }
    
    func loadData(){
        countryList.removeAll()
        countryList.append(Country(name: "Afghanistan", capital: "Kabul", flag: #imageLiteral(resourceName: "af")))
        countryList.append(Country(name: "India", capital: "New Delhi", flag: #imageLiteral(resourceName: "in")))
        countryList.append(Country(name: "France", capital: "Paris", flag: #imageLiteral(resourceName: "fr")))
        countryList.append(Country(name: "USA", capital: "Washington DC", flag: #imageLiteral(resourceName: "us")))
        countryList.append(Country(name: "Canada", capital: "Ottawa", flag: #imageLiteral(resourceName: "ca")))
        countryList.append(Country(name: "Netherland", capital: "Amsterdam", flag: #imageLiteral(resourceName: "nl")))
        countryList.append(Country(name: "Nepal", capital: "Katmandu", flag: #imageLiteral(resourceName: "np")))
        countryList.append(Country(name: "Philippines", capital: "Manila", flag: #imageLiteral(resourceName: "ph")))
        countryList.append(Country(name: "Brazil", capital: "Rio de Janeiro", flag: #imageLiteral(resourceName: "br")))
        countryList.append(Country(name: "Jamaica", capital: "Kingston", flag: #imageLiteral(resourceName: "jm")))
    }
}
