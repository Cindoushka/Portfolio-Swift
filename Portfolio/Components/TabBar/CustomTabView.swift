//
//  CustomTabView.swift
//  Portfolio
//
//  Created by Cindy Bajoni on 11/06/2023.
//

import SwiftUI

struct CustomTabView<Content: View>: View {

    let tabs: [TabItemData]
    @Binding var selectedIndex: Int
    @ViewBuilder let content: (Int) -> Content


    var body: some View {
        ZStack {
            TabView(selection: $selectedIndex) {
                ForEach(tabs.indices) { index in
                    content(index)
                        .tag(index)
                }
            }

            VStack {
                Spacer()
                TabBottomView(selectedIndex: $selectedIndex)
            }
            .padding(.bottom, 8)
        }
    }
}
//struct CustomTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTabView(tabs: tabBarItem, selectedIndex: .constant(0), content: <#T##(Int) -> Content#>)
//    }
//}
