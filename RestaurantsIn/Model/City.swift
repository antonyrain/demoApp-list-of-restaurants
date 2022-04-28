//
//  City.swift
//  RestaurantsIn
//
//  Created by Antony Rain on 20.04.2022.
//

import Foundation
import SwiftUI

struct City: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
}
