//
//  SoftskillsButtons.swift
//  Portfolio
//
//  Created by Cindy Bajoni on 11/06/2023.
//

import SwiftUI

struct SoftskillsButtons: View {
    
    var softskills : [SoftSkills]
    
    let rows = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var width: CGFloat = UIScreen.main.bounds.width - 80

    let itemsPerRow = 3

    func createGrid() -> [GridItem] {
        var gridItems: [GridItem] = []
        
        for _ in 0..<itemsPerRow {
            gridItems.append(GridItem(.flexible(), spacing: 10))
        }
        
        return gridItems
    }
    
    var body: some View {

        LazyVGrid(columns: createGrid(), alignment: .center, spacing: 12) {
            ForEach(softskills, id: \.self) { skills in
                Text(skills.rawValue)
                    .font(.system(size: 10))
                    .frame(width: 100, height: 30)                   .overlay {
                            LinearGradient(
                                colors: [.accentColor, .pink],
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        }
                    .mask(
                        Text(skills.rawValue)
                            .font(.caption)
                            .multilineTextAlignment(.center)
                    )
                    .background(Color("lavende"))
                    .cornerRadius(6)
                    .shadow(radius: 4)
                
            }
        }
        .frame(width : width)
        .padding(.vertical, 10)
    }
}

struct SoftskillsButtons_Previews: PreviewProvider {
    static var previews: some View {
        SoftskillsButtons(softskills: emplois[1].softSkills)
    }
}
