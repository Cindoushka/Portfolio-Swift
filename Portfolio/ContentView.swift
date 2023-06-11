//
//  ContentView.swift
//  Portfolio
//
//  Created by Cindy Bajoni on 10/06/2023.
//

import SwiftUI

struct ContentView: View {
    enum TabType: Int, CaseIterable {
        case profile = 0
        case portfolio
        case experiences
        case apropos
        case contacts
        
        var tabItem: TabItemData {
            switch self {
            case .profile:
                return TabItemData(imageTab: "helloblackmemoji", selectedImage: "hellomemoji", titleTab: "Qui suis-je?")
            case .portfolio:
                return TabItemData(imageTab: "blackmemoji", selectedImage: "memojipng", titleTab: "Portfolio")
            case .experiences:
                return TabItemData(imageTab: "studyblackmemoji", selectedImage: "studymemoji", titleTab: "Expériences")
            case .apropos:
                return TabItemData(imageTab: "loveblackmemoji", selectedImage: "lovememoji", titleTab: "À propos")
            case .contacts:
                return TabItemData(imageTab: "callblackmemoji", selectedImage: "callmemoji", titleTab: "Contacts")
                                   }
            }
        }
        
        @State var selectedIndex: Int = 0

    @ViewBuilder
    func getTabView(type: TabType) -> some View {
        switch type {
        case .profile:
            Accueil()
        case .portfolio:
            PortfolioPage()
        case .experiences:
            Experiences()
        case  .apropos:
            Aproposde()
        case .contacts:
            ContactezMoi()
        }
    }
    var body: some View {
        TabView {

            CustomTabView(tabs: TabType.allCases.map({ $0.tabItem }), selectedIndex: $selectedIndex) { index in
                      let type = TabType(rawValue: index) ?? .profile
                      getTabView(type: type)
                  }
              }
        }
    }
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


