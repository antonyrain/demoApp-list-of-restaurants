//
//  RestaurantList.swift
//  RestaurantRow
//
//  Created by Anton R on 20.04.2022.
//

import SwiftUI

struct NewYorkRestaurantList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredRestaurants: [Restaurant] {
        modelData.newYorkRestaurants.filter { restaurant in
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
                    NewYorkRestaurantDetail(restaurant: restaurant)
                } label: {
                    RestaurantRow(restaurant: restaurant)
                }
            }
        }
        .navigationTitle("Restaurants in New York")
    }
}

struct NewYorkRestaurantList_Previews: PreviewProvider {
    static var previews: some View {
        NewYorkRestaurantList()
            .environmentObject(ModelData())
    }
}
