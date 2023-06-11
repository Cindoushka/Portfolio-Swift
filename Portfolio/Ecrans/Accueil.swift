//
//  Accueil.swift
//  Portfolio
//
//  Created by Cindy Bajoni on 10/06/2023.
//

import SwiftUI

struct Accueil: View {
    
    @State private var moving = false

    var body: some View {

        ZStack {
            BubbleTest()
            VStack(spacing: 12) {
            Spacer()
            HStack{
                
            Text(moi.prenom)
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .font(.largeTitle)
            Text(moi.nom)
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .font(.largeTitle)
        }
            
                Text(moi.posteRecherche)
                .foregroundColor(.white)
                .font(.system(size:22))
                .italic()
                .padding(12)
                .background(Color.accentColor)
                .cornerRadius(10)
                .shadow(radius: 5)
                
                Text("\(moi.age) ans")
                    .fontWeight(.thin)
                    .font(.system(size:22))
                
                
            ZStack {
            Image(moi.photo)
                .resizable()
                .scaledToFill()
                .frame(width: 260, height: 260)
                .clipShape(Circle())
                .padding(10)
                .background(Color.accentColor)
                .clipShape(Circle())
                .shadow(radius: 20)
//                .offset(y: moving ? 60 : -50)
//                .animation(.interpolatingSpring(stiffness: 100, damping: 7).repeatForever(autoreverses: true).delay(0.1), value: moving)
                
            }
            .onAppear{
                moving.toggle()
            }
//            Spacer()
            HStack {
                
                VStack{
                    Text(moi.lieu)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .frame(width: 200)
                        .multilineTextAlignment(.center)
                        .shadow(radius: 20)
                        .padding(.top, 12)
                    
        
    
//            Spacer()
        }
                .padding(.leading)
                    Image("memojipng")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
            }
            Spacer()
        }
        }
    }
}

struct Accueil_Previews: PreviewProvider {
    static var previews: some View {
        Accueil()
    }
}
