//
//  NavigationButton.swift
//  RestaurantRow
//
//  Created by Anton R on 22.04.2022.
//

import SwiftUI

struct MappinButton: View {
    var body: some View {
        Button {
        } label: {
            Label("Mappin", systemImage: "figure.walk.circle")
                .labelStyle(.iconOnly)
        }
    }
}

struct MappinButton_Previews: PreviewProvider {
    static var previews: some View {
        MappinButton()
    }
}
