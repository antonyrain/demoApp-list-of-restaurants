//
//  ShareButton.swift
//  RestaurantRow
//
//  Created by Anton R on 22.04.2022.
//

import SwiftUI

struct ShareButton: View {
    var body: some View {
        Button {
        } label: {
            Label("Share", systemImage: "square.and.arrow.up.circle.fill")
                .labelStyle(.iconOnly)
        }
    }
}

struct ShareButton_Previews: PreviewProvider {
    static var previews: some View {
        ShareButton()
    }
}
