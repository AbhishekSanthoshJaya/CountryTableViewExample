//
//  ViewController.swift
//  CountryTableViewExample
//
//  Created by moxDroid on 2020-03-04.
//  Copyright © 2020 moxDroid. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var tblCountry: UITableView!
    lazy var countryNames: [Country] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadCountries()
        
    }
    
    func loadCountries()
    {
        countryNames.append(Country(name: "Afghanistan", capital: "Kabul", flag: #imageLiteral(resourceName: "af")))
        countryNames.append(Country(name: "India", capital: "New Delhi", flag: #imageLiteral(resourceName: "in")))
        countryNames.append(Country(name: "France", capital: "Paris", flag: #imageLiteral(resourceName: "fr")))
        countryNames.append(Country(name: "USA", capital: "Washington DC", flag: #imageLiteral(resourceName: "us")))
        countryNames.append(Country(name: "Canada", capital: "Ottawa", flag: #imageLiteral(resourceName: "ca")))
        countryNames.append(Country(name: "Netherland", capital: "Amsterdam", flag: #imageLiteral(resourceName: "nl")))
        countryNames.append(Country(name: "Nepal", capital: "Katmandu", flag: #imageLiteral(resourceName: "np")))
        countryNames.append(Country(name: "Philippines", capital: "Ottawa", flag: #imageLiteral(resourceName: "ph")))
        countryNames.append(Country(name: "Brazil", capital: "Rio de Janeiro", flag: #imageLiteral(resourceName: "br")))
        countryNames.append(Country(name: "Jamaica", capital: "Kingston", flag: #imageLiteral(resourceName: "af")))
       /* ["", "Angola", "Aruba",
        "Canada","India","Bahamas", "Ghana", "France", "Nepal", "Kenya", "Bermudes", "Danemark", "Mexico", "Philippines", "China", "Venezuela", "Pakistan", "UK", "Zimbabwe", "USA", "Rwanda", "Iran", "Sri Lanka", "Netherland", "Brazil", "Turkey", "Oman" , "Qatar"]
 */
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return countryNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell")
        
        let country = countryNames[indexPath.row]
        cell?.textLabel?.text = country.name
        cell?.detailTextLabel?.text = country.capital
        cell?.imageView?.image = country.flag
        
        return cell!
    }
    
    
}

