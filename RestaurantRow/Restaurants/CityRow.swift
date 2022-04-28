//
//  CityRow.swift
//  RestaurantRow
//
//  Created by Anton R on 20.04.2022.
//

import SwiftUI

struct CityRow: View {
    var city: City
    
    var body: some View {
        HStack {
            city.image
                .resizable()
                .frame(width: 90, height: 90)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.white, lineWidth: 3)}
                .shadow(radius: 7)
            Text(city.name)
                .font(.system(size: 21, weight: .semibold))
                .foregroundColor(.white)
                .shadow(color: .black , radius: 15)
                .padding(.leading, 40.0)
            Spacer()
        }.padding()
    }
}

struct CityRow_Previews: PreviewProvider {
    static var cities = ModelData().cities
    
    static var previews: some View {
        Group {
            CityRow(city: cities[0])
        }
        //.previewLayout(.fixed(width: 300, height: 60))
    }
}
