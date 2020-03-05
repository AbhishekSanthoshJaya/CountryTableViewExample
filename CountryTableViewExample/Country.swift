//
//  Country.swift
//  CountryTableViewExample
//
//  Created by moxDroid on 2020-03-04.
//  Copyright © 2020 moxDroid. All rights reserved.
//

import Foundation
import UIKit

class Country
{
    var name: String
    var capital: String
    var flag: UIImage
    
    init(name: String, capital: String, flag: UIImage) {
        self.name = name
        self.capital = capital
        self.flag = flag
    }
}
