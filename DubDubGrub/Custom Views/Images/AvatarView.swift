//
//  AvatarView.swift
//  DubDubGrub
//
//  Created by Samed Dağlı on 15.05.2023.
//

import SwiftUI

struct AvatarView: View {
    var body: some View {
        Image.defaultAvatar
            .resizable()
            .scaledToFill()
            .frame(width: 30, height: 30)
            .clipShape(Circle())
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView()
    }
}
