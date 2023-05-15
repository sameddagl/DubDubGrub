//
//  DetailViewButton.swift
//  DubDubGrub
//
//  Created by Samed Dağlı on 15.05.2023.
//

import SwiftUI

struct DetailViewButton: View {
    let imageName: String
    let bgColor: Color
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .font(.title2)
                .padding()
        }
        .frame(width: 60, height: 60)
        .background(bgColor)
        .clipShape(Circle())
    }
}

struct DetailViewButton_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewButton(imageName: "location.fill", bgColor: Color.brandPrimary)
            .preferredColorScheme(.dark)
    }
}
