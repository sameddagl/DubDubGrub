//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Samed Dağlı on 15.05.2023.
//

import SwiftUI

struct LocationDetailView: View {
    private let columns: [GridItem] = [.init(.flexible(), spacing: 20), .init(.flexible(), spacing: 20), .init(.flexible(), spacing: 20)]
    
    var body: some View {
        VStack(spacing: 20) {
            Image.defaultBanner
                .resizable()
                .frame(height: 120)
            
            LocationLabel(location: "1 S Market ST Ste 40")
            
            ProfileDescriptionText(description: "It's Chipotle. Enough said.It's Chipotle. Enough said.It's Chipotle. Enough said.It's Chipotle. Enough said.It's Chipotle. Enough said.")
            
            HStack(spacing: 20) {
                Button {
                    
                } label: {
                    DetailViewButton(imageName: "location.fill", bgColor: .brandPrimary)
                }
                
                Link(destination: URL(string: "https://www.google.com.tr")!) {
                    DetailViewButton(imageName: "globe", bgColor: .brandPrimary)
                }
                
                Button {
                    
                } label: {
                    DetailViewButton(imageName: "phone.fill", bgColor: .brandPrimary)
                }
                
                Button {
                    
                } label: {
                    DetailViewButton(imageName: "person.fill.xmark", bgColor: .pink)
                }
                
            }
            .modifier(DetailViewButtonsStyle())
            
            Text("Who's Here?")
                .font(.title2)
                .fontWeight(.semibold)
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(0..<7) { _ in
                        NameAvatarCell(name: "Person Name")
                    }
                }
            }
            
            
        }
        .navigationTitle("Location Name")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailView()
        }
        //            .preferredColorScheme(.dark)
    }
}

struct DetailViewButtonsStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .tint(.primary)
            .padding()
            .padding(.horizontal)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(50)
    }
}
