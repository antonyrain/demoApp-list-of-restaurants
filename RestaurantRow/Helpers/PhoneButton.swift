//
//  PhoneButton.swift
//  RestaurantRow
//
//  Created by Anton R on 22.04.2022.
//

import SwiftUI

struct PhoneButton: View {
    var body: some View {
        Button {
        } label: {
            Label("Phone", systemImage: "phone.circle.fill")
                .labelStyle(.iconOnly)
        }
    }
}

struct PhoneButton_Previews: PreviewProvider {
    static var previews: some View {
        PhoneButton()
    }
}
