//
//  LondonRestaurantList.swift
//  RestaurantsIn
//
//  Created by Antony Rain on 21.04.2022.
//

import SwiftUI

struct LondonRestaurantList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredRestaurants: [Restaurant] {
        modelData.londonRestaurants.filter { restaurant in
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
                    LondonRestaurantDetail(restaurant: restaurant)
                } label: {
                    RestaurantRow(restaurant: restaurant)
                }
            }
        }
        .navigationTitle("Restaurants in London")
    }
}

struct LondonRestaurantList_Previews: PreviewProvider {
    static var previews: some View {
        LondonRestaurantList()
            .environmentObject(ModelData())
    }
}
