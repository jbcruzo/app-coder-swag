//
//  DataService.swift
//  coder-swag
//
//  Created by Juan Bernardo Cruz Ortiz on 6/9/18.
//  Copyright © 2018 Juan Bernardo Cruz Ortiz. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let categories = [ // este ser lo estamos haciendo de manera local pero la información podria venir del servidor a alimentar los objetos en la app
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}
