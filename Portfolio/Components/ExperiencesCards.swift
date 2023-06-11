//
//  ExperiencesCards.swift
//  Portfolio
//
//  Created by Cindy Bajoni on 11/06/2023.
//

import SwiftUI

struct ExperiencesCards: View {
    
    var experiences : ExperiencesPro
    
    var width: CGFloat = UIScreen.main.bounds.width - 32
    var height: CGFloat = UIScreen.main.bounds.height - 80

    var body: some View {

        VStack(spacing: 4) {
            Text(experiences.entreprise)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.accentColor)
                .multilineTextAlignment(.center)
            
            Text("📍 \(experiences.ville)")
                .font(.system(size: 16))
                .fontWeight(.light)
            
            Text(experiences.periode)
                .foregroundColor(.gray)
            
            Image(experiences.image)
                .resizable()
                .scaledToFit()
                .padding(20)
                
            Text("\(experiences.intitule) en \(experiences.diplome)")
                .font(.system(size: 20))
                .foregroundColor(.accentColor)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            
            ScrollView(.vertical, showsIndicators: false){
                Text(experiences.description)
                    .padding(8)
            }
            .frame(maxHeight: 130)

            SoftskillsButtons(softskills: experiences.softSkills)
        }
        .padding(.vertical, 30)
        .padding(.horizontal, 24)
        .background(Color.white)
        .cornerRadius(24)
        .frame(width: width, height: height)
        .shadow(radius: 12)
        
    }
}

struct ExperiencesCards_Previews: PreviewProvider {
    static var previews: some View {
        ExperiencesCards(experiences: emplois[10])
    }
}
