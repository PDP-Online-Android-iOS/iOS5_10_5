//
//  ContentView.swift
//  Task 5
//
//  Created by Ogabek Matyakubov on 30/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    @State var phone = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("OgabekDev")
                    .fontWeight(.bold)
                    .font(.system(size: 36, design: .rounded))
                    .multilineTextAlignment(.center)
                    .truncationMode(.middle)
                
                HStack {
                    Image(systemName: "person").foregroundColor(.gray)
                        .padding(7.5)
                    TextField("Name", text: $name)
                        .font(Font.system(size: 15, weight: .medium, design: .rounded))
                }
                .padding(5)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.2), lineWidth: 1))
                
                HStack {
                    Image(systemName: "phone").foregroundColor(.gray)
                        .padding(7.5)
                    TextField("Phone", text: $phone)
                        .font(Font.system(size: 15, weight: .medium, design: .rounded))
                }
                .padding(5)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.2), lineWidth: 1))
        
            }
            .padding()
            .navigationBarItems(leading: Image(systemName: "square.and.arrow.up"), trailing: Image(systemName: "person.badge.plus"))
            .navigationBarTitle("Login", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
