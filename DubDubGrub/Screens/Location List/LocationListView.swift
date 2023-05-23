//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Samed Dağlı on 15.05.2023.
//

import SwiftUI

struct LocationListView: View {
    @State private var mockData = ["Chipotle", "AC Kitchen & Lounge", "Mezcal Restaruant"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(mockData, id: \.self) { spot in
                    NavigationLink(value: spot) {
                        LocationCell(name: spot)
                    }
                }
            }
            .navigationTitle("Grub Spots")
            .navigationDestination(for: String.self) { spot in
                LocationDetailView()
            }
        }
        .tint(.brandPrimary)
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
