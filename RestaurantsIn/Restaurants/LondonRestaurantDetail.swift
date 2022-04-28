//
//  Detail.swift
//  RestaurantsIn
//
//  Created by Antony Rain on 20.04.2022.
//

import SwiftUI

struct LondonRestaurantDetail: View {
    @EnvironmentObject var modelData: ModelData
    var restaurant: Restaurant
    var restaurantIndex: Int {
        modelData.londonRestaurants.firstIndex(where:{$0.id == restaurant.id})!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: restaurant.locationCoordinates)
                .frame(height: 400)
                .ignoresSafeArea()
            CircleImage(image: restaurant.image)
                .offset(y: -80)
                .padding(.bottom, -80)
            VStack(alignment: .leading) {
                HStack{
                    Text(restaurant.name)
                        .font(.title)
                    FavoriteButton(isSet:$modelData.londonRestaurants[restaurantIndex]
                        .isFavorite)
                    .padding(.leading, 10)
                    Spacer()
                }
                .padding(.vertical, 10)
                HStack {
                    Text("\(restaurant.cuisine) cuisine")
                    Spacer()
                    ShareButton()
                        .padding(.trailing,40)
                }
                Divider()
                HStack {
                    Text(restaurant.address)
                    Text(restaurant.city)
                    Spacer()
                    MappinButton()
                        .padding(.trailing,40)
                }
                Divider()
                HStack {
                    Text("Call \(restaurant.phone)")
                    Spacer()
                    PhoneButton()
                        .padding(.trailing,40)
                }
                Divider()
                Text("About \(restaurant.name)")
                    .font(.title3)
                    .padding(.top, 2)
                Text(restaurant.description)
                    .padding(.top, 2.0)
                Divider()
            }
            .padding()
        }
        .navigationTitle(restaurant.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LondonRestaurantDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LondonRestaurantDetail(restaurant: modelData.londonRestaurants[0])
            .environmentObject(modelData)
    }
}
