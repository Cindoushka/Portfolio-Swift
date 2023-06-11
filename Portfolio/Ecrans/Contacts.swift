//
//  Contacts.swift
//  Portfolio
//
//  Created by Cindy Bajoni on 10/06/2023.
//

import SwiftUI

struct ContactezMoi: View {
    var body: some View {
        VStack {
            
            HStack {
                Image(moi.photo)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(5)
                    .background(Color.accentColor)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                
                Text("Contactez-moi...")
                    .foregroundColor(.accentColor)
                    .font(.system(size: 35))
                    .italic()
                
            }
            
            VStack {
                
                List {
                    Text(moi.linkedin)
                    Text(moi.github)
                    Text(moi.photographie)
                    Text(moi.telephone)
                    Text(moi.email)
                }
            
            }
        }
    }
}

struct Contacts_Previews: PreviewProvider {
    static var previews: some View {
        ContactezMoi()
    }
}
