//
//  ParisRestaurantList.swift
//  RestaurantsIn
//
//  Created by Antony Rain on 21.04.2022.
//

import SwiftUI

struct ParisRestaurantList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredRestaurants: [Restaurant] {
        modelData.parisRestaurants.filter { restaurant in
            return (!showFavoritesOnly || restaurant.isFavorite)
        }
    }
    
    var body: some View {
        List{
            Toggle(isOn: $showFavoritesOnly) {
                Text("Favorites only")
            }
            
            ForEach(filteredRestaurants) { restaurant in
                NavigationLink {
                    ParisRestaurantDetail(restaurant: restaurant)
                } label: {
                    RestaurantRow(restaurant: restaurant)
                }
            }
        }
        .navigationTitle("Restaurants in Paris")
    }
}

struct ParisRestaurantList_Previews: PreviewProvider {
    static var previews: some View {
        ParisRestaurantList()
            .environmentObject(ModelData())
    }
}
