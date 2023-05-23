//
//  MapViewLogoView.swift
//  DubDubGrub
//
//  Created by Samed Dağlı on 15.05.2023.
//

import SwiftUI

struct MapViewLogoView: View {
    var body: some View {
        Image.mainIcon
            .resizable()
            .scaledToFit()
            .frame(width: 120)
        
    }
}

struct MapViewLogoView_Previews: PreviewProvider {
    static var previews: some View {
        MapViewLogoView()
    }
}
