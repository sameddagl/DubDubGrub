//
//  DGButton.swift
//  DubDubGrub
//
//  Created by Samed Dağlı on 23.05.2023.
//

import SwiftUI

struct DGButton: View {
    let title: String
    
    var body: some View {
        Text(title)
            .padding()
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 250, height: 50)
            .background(Color.brandPrimary)
            .cornerRadius(10)    }
}

struct DGButton_Previews: PreviewProvider {
    static var previews: some View {
        DGButton(title: "Save Profile")
    }
}
