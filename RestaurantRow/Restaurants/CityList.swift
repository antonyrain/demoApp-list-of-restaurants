//
//  CityList.swift
//  RestaurantRow
//
//  Created by Anton R on 20.04.2022.
//

import SwiftUI

struct CityList: View {
    var cities = ModelData().cities
    
    init() {
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.red]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.red]
        
        UITableView.appearance().backgroundColor = UIColor.clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        
        let size = UIScreen.main.bounds
        
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(
                        colors: [Color("BG1"), Color("BG2")]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                Color.black
                    .opacity(0.7)
                    .blur(radius: 150)
                    .ignoresSafeArea()
                
                Circle()
                    .fill(Color("mediumorchid"))
                    .blur(radius: 120)
                    .offset(x: -size.width / 1.8, y: -size.height / 5)
                
                Circle()
                    .fill(Color("skyblue"))
                    .blur(radius: 120)
                    .offset(x: size.width / 1.8, y: -size.height / 2)
                
                Circle()
                    .fill(Color("mediumorchid"))
                    .blur(radius: 120)
                    .offset(x: size.width / 1.8, y: size.height / 4)
                
                Circle()
                    .fill(Color("skyblue"))
                    .blur(radius: 120)
                    .offset(x: -size.width / 1.8, y: size.height / 2)
                
                
                VStack {
                    ScrollView {
                        NavigationLink {
                            NewYorkRestaurantList()
                        } label: {
                            CityRow(city: cities[0])
                        }
                        NavigationLink {
                            LondonRestaurantList()
                        } label: {
                            CityRow(city: cities[1])
                        }
                        NavigationLink {
                            ParisRestaurantList()
                        } label: {
                            CityRow(city: cities[2])
                        }
                    }
                    .offset(x: 55 , y: 40)
                    .navigationTitle("Cities")
                    .navigationBarTitleDisplayMode(.inline)
                    .overlay(LogoWaves().offset(y: size.height / 4.7)
                    )
                    Text("Restaurants and Bars")
                        .offset(y: -size.height / 4)
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.white)
                        .shadow(color: .black , radius: 15)
                }
            }
        }
    }
    
    struct CityList_Previews: PreviewProvider {
        static var previews: some View {
            CityList()
                .environmentObject(ModelData())
        }
    }
}
