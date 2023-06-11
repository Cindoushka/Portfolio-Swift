//
//  FormationsList.swift
//  Portfolio
//
//  Created by Cindy Bajoni on 11/06/2023.
//

import SwiftUI

struct FormationsList: View {
    var body: some View {
        TabView {
            ForEach(formations) { formation in
                ExperiencesCards(experiences: formation)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}
struct FormationsList_Previews: PreviewProvider {
    static var previews: some View {
        FormationsList()
    }
}
