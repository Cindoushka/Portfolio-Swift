//
//  ExperiencesPro.swift
//  Portfolio
//
//  Created by Cindy Bajoni on 11/06/2023.
//

import SwiftUI

struct ExperiencesProfessionnelles: View {
    var body: some View {

        TabView {
            ForEach(emplois) { emploi in
                ExperiencesCards(experiences: emploi)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct ExperiencesPro_Previews: PreviewProvider {
    static var previews: some View {
        ExperiencesProfessionnelles()
    }
}
