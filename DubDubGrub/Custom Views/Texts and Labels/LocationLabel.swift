//
//  LocationLabel.swift
//  DubDubGrub
//
//  Created by Samed Dağlı on 15.05.2023.
//

import SwiftUI

struct LocationLabel: View {
    let location: String
    
    var body: some View {
        HStack {
            Label(location, systemImage: "mappin.and.ellipse")
                .foregroundColor(.secondary)
                .font(.caption)
                .padding(.horizontal)
            Spacer()
        }
    }
}

struct LocationLabel_Previews: PreviewProvider {
    static var previews: some View {
        LocationLabel(location: "1 S Market ST Ste 40")
    }
}
