//
//  Restauran.swift
//  RestaurantRow
//
//  Created by Anton R on 19.04.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Restaurant: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var cuisine: String
    var address: String
    var city: String
    var state: String
    var zipCode: String
    var phone: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
