//
//  ProfileView.swift
//  DubDubGrub
//
//  Created by Samed Dağlı on 15.05.2023.
//

import SwiftUI

struct ProfileView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var companyName = ""
    @State private var bio = ""
    
    var body: some View {
        VStack {
            HStack {
                ZStack(alignment: .bottom) {
                    AvatarView(size: 80)
                    
                    Image(systemName: "square.and.pencil")
                        .foregroundColor(.black)
                        .padding(.bottom, 4)
                }
                
                VStack(alignment: .leading) {
                    TextField("First Name", text: $firstName)
                        .modifier(ProfileTextFieldStyle())
                    
                    TextField("Last Name", text: $lastName)
                        .modifier(ProfileTextFieldStyle())
                    
                    TextField("Company Name", text: $companyName)
                }
                .padding(.leading, 10)
            }
            .padding()
            .frame(height: 130)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(20)
            .padding()
            
            HStack(spacing: 0) {
                BioTextView(bio: $bio)
                
                Spacer()
                
                Button {
                    print("Check")
                } label: {
                    Label("Check Out", systemImage: "mappin.and.ellipse")
                }
                .tint(.pink)
                .buttonStyle(.bordered)
                
            }
            .padding(.horizontal)
            
            TextEditor(text: $bio)
                .font(.callout)
                .frame(height: 100)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 8).stroke(.secondary, lineWidth: 1)
                })
                .padding(.horizontal)
            
            Spacer()
            
            Button {
                
            } label: {
                DGButton(title: "Save Profile")
            }
            .padding(.vertical)
            
        }
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

struct ProfileTextFieldStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .fontWeight(.semibold)
            .lineLimit(1)
            .minimumScaleFactor(0.75)
    }
}
