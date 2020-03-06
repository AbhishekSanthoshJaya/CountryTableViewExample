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
    
    
    @IBAction func btnNext(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let menu = sb.instantiateViewController(identifier: "menuVC") as! MenuTableViewController
        print("pressed")
        navigationController?.pushViewController(menu, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryNames = DataStorage.getInstance().getAllCountries()
        
    }
    
   
        
       /* ["", "Angola", "Aruba",
        "Canada","India","Bahamas", "Ghana", "France", "Nepal", "Kenya", "Bermudes", "Danemark", "Mexico", "Philippines", "China", "Venezuela", "Pakistan", "UK", "Zimbabwe", "USA", "Rwanda", "Iran", "Sri Lanka", "Netherland", "Brazil", "Turkey", "Oman" , "Qatar"]
 */
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
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let c = countryNames[indexPath.row]
//        print(c.name)
//        let sb = UIStoryboard(name: "Main", bundle: nil)
//        let secondVC = sb.instantiateViewController(identifier: "SecondVC") as! SecondViewController
//        navigationController?.pushViewController(secondVC, animated: true)
//    }
//
    
}

