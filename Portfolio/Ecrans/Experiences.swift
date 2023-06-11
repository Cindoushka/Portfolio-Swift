

import SwiftUI

enum ViewButton {
    case emplois
    case scolaire
}

struct Experiences: View {
    
    @State private var selectedTab: ViewButton = .emplois
    @State private var currentTab = "Expériences Professionnelles"
    @State private var tabBarOffset: CGFloat = 0
    @Namespace private var animation
    
    var body: some View {
            VStack(spacing: 0) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        TabButton(title: "Expériences Professionnelles", currentTab: $currentTab, animation: animation, selectedTab: $selectedTab, buttonName: .emplois)
                        
                        TabButton(title: "Formations & Diplômes", currentTab: $currentTab, animation: animation, selectedTab: $selectedTab, buttonName: .scolaire)
                    }
                }
                
                Divider()
                
                if selectedTab == .emplois {
                    ExperiencesProfessionnelles()
                } else if selectedTab == .scolaire {
                    FormationsList()
                }
            }
            .background(Color("lavende"))
        .zIndex(1)
        

        VStack {
            if selectedTab == .emplois {
                ExperiencesProfessionnelles()
            } else if selectedTab == .scolaire {
                FormationsList()
            }
        }
        .padding(.top)
        .zIndex(0)
    }
}

struct Experiences_Previews: PreviewProvider {
    static var previews: some View {
        Experiences()
    }
}

struct TabButton: View {
    
    var title: String
    @Binding var currentTab: String
    var animation: Namespace.ID
    @Binding var selectedTab: ViewButton
    var buttonName: ViewButton
    
    var body: some View {
        
        Button(action: {
            withAnimation {
                currentTab = title
            }
            selectedTab = buttonName
            
        }, label: {
            LazyVStack(spacing: 12) {
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundColor(currentTab == title ? .accentColor : .secondary)
                    .padding(.horizontal)
                
                if currentTab == title {
                    Capsule()
                        .fill(Color.accentColor)
                        .frame(height: 1.2)
                        .matchedGeometryEffect(id: "TAB", in: animation)
                } else {
                    Capsule()
                        .fill(Color.clear)
                        .frame(height: 1.2)
                }
            }
        })
    }
}
