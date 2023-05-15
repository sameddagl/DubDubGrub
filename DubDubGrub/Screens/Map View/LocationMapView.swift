//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Samed Dağlı on 15.05.2023.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    @State private var region = MKCoordinateRegion(center: .init(latitude: 37.331516, longitude: -121.891054), span: .init(latitudeDelta: 0.02, longitudeDelta: 0.02))
    
    var body: some View {
        ZStack {
            MapViewLogoView()
            
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
