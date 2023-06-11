//
//  TabBottomView.swift
//  CurriculumVitae
//
//  Created by apprenant50 on 12/06/2022.
//

import SwiftUI

struct TabBottomView: View {
    
    var height: CGFloat = 70
    var width: CGFloat = UIScreen.main.bounds.width - 32
    
    @Binding var selectedIndex: Int
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack {
                        Spacer()

                ForEach(tabBarItem.indices) { index in
                            let item = tabBarItem[index]
                            Button {
                                self.selectedIndex = index
                            } label: {
                                let isSelected = selectedIndex == index
                                TabItemView(data: item, isSelected: isSelected)
                            }
                            Spacer()
                        }
                    }
                    .frame(width: width, height: height)
                    .background(Color.white)
                    .cornerRadius(13)
                .shadow(radius: 5, x: 0, y: 4)
        }
        .offset(y:40)

    }
}

struct TabBottomView_Previews: PreviewProvider {
    static var previews: some View {
        TabBottomView(selectedIndex: .constant(0))
    }
}
