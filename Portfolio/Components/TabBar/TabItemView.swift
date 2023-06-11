//
//  TabItemView.swift
//  CurriculumVitae
//
//  Created by apprenant50 on 12/06/2022.
//

import SwiftUI

struct TabItemView: View {
    let data: TabItemData
    let isSelected: Bool
    @State private var angle = 0.0

    var body: some View {
        VStack {
            Image(isSelected ? data.selectedImage : data.imageTab)
                .resizable()
                .scaledToFit()
                .frame(height: 45)
                .rotationEffect(.degrees(angle))
                .animation(.easeIn, value: angle)
                                
            Spacer().frame(height: 4)
            
            Text(data.titleTab)
                .foregroundColor(isSelected ? .accentColor : .gray)
                .font(.system(size: 10))
                .frame(width: 60)
        }
    }
}

struct TabItemView_Previews: PreviewProvider {
    static var previews: some View {
        TabItemView(data: tabBarItem[0], isSelected: true)
    }
}
