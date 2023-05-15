//
//  LocationCell.swift
//  DubDubGrub
//
//  Created by Samed Dağlı on 15.05.2023.
//

import SwiftUI

struct LocationCell: View {
    let name: String
    
    var body: some View {
        HStack() {
            Image.defaultSquare
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 5)
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.8)
                HStack {
                    ForEach(0..<3) { _ in
                        AvatarView(size: 30)
                    }
                }
            }
            .padding(.leading, 8)
        }
    }
}

struct LocationCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationCell(name: "AC Kitchen & Lounge")
    }
}


