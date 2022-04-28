//
//  RestaurantRow.swift
//  RestaurantRow
//
//  Created by Anton R on 19.04.2022.
//

import SwiftUI

struct RestaurantRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        HStack {
            restaurant.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                .shadow(radius: 7)
            Text(restaurant.name)
                .padding(.leading, 15.0)
            Spacer()
            if restaurant.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct RestaurantRow_Previews: PreviewProvider {
    static var restaurants = ModelData().newYorkRestaurants
    
    static var previews: some View {
        Group {
            RestaurantRow(restaurant: restaurants[0])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
