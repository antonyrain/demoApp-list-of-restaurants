//
//  ContentView.swift
//  RestaurantRow
//
//  Created by Anton R on 19.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CityList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
