//
//  NameAvatarView.swift
//  DubDubGrub
//
//  Created by Samed Dağlı on 15.05.2023.
//

import SwiftUI

struct NameAvatarView: View {
    let name: String
    
    var body: some View {
        VStack() {
            AvatarView(size: 60)
            Text(name)
                .lineLimit(1)
                .fontWeight(.semibold)
        }
        .padding(.vertical, 5)
    }
}

struct NameAvatarView_Previews: PreviewProvider {
    static var previews: some View {
        NameAvatarView(name: "Person Name")
    }
}
