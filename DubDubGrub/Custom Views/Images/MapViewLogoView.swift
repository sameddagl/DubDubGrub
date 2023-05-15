//
//  MapViewLogoView.swift
//  DubDubGrub
//
//  Created by Samed Dağlı on 15.05.2023.
//

import SwiftUI

struct MapViewLogoView: View {
    var body: some View {
        VStack {
            Image.mainIcon
                .resizable()
                .scaledToFit()
                .frame(width: 120)
            Spacer()
        }
        .zIndex(2)
    }
}

struct MapViewLogoView_Previews: PreviewProvider {
    static var previews: some View {
        MapViewLogoView()
    }
}
