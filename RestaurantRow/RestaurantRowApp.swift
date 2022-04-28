//
//  RestaurantRowApp.swift
//  RestaurantRow
//
//  Created by Anton R on 19.04.2022.
//

import SwiftUI

@main
struct RestaurantRowApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
