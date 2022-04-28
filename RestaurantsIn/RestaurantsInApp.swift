//
//  RestaurantsInApp.swift
//  RestaurantsIn
//
//  Created by Antony Rain on 19.04.2022.
//

import SwiftUI

@main
struct RestaurantsInApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
