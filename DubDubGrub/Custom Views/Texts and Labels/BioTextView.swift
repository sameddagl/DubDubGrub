//
//  BioTextView.swift
//  DubDubGrub
//
//  Created by Samed Dağlı on 23.05.2023.
//

import SwiftUI

struct BioTextView: View {
    @Binding var bio: String
    var body: some View {
        Text("Bio: ")
            .font(.subheadline)
            .foregroundColor(.secondary)
        +
        Text("\(100 - bio.count) ")
            .bold()
            .font(.subheadline)
            .foregroundColor(bio.count <= 100 ? .brandPrimary : .pink)
        +
        Text("characters remain")
            .font(.subheadline)
            .foregroundColor(.secondary)
    }
}

struct BioTextView_Previews: PreviewProvider {
    static var previews: some View {
        BioTextView(bio: .constant(""))
    }
}
