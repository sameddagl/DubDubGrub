//
//  ProfileDescriptionText.swift
//  DubDubGrub
//
//  Created by Samed Dağlı on 23.05.2023.
//

import SwiftUI

struct ProfileDescriptionText: View {
    let description: String
    
    var body: some View {
        Text(description)
            .lineLimit(3)
            .minimumScaleFactor(0.8)
            .padding(.horizontal, 20)
    }
}

struct ProfileDescriptionText_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDescriptionText(description: "Test description")
    }
}
