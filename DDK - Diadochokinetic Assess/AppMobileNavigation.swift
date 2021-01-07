//
//  AppMobileNavigation.swift
//  Diadochokinetic Assess
//
//  Created by Collin Dunphy on 9/24/20.
//

import SwiftUI
import Combine

struct AppMobileNavigation: View {
        
    @State private var mobiletabSelection : NavigationItem = .assess
    
    var body: some View {
        TabView(selection: $mobiletabSelection) {
            NavigationView {
                AssessScreen()
            }
            .tabItem { NavigationItem.assess.label }
            .tag(NavigationItem.assess)
            
            NavigationView {
                HistoryScreen()
            }
            .tabItem { NavigationItem.history.label }
            .tag(NavigationItem.history)

            NavigationView {
                SettingsScreen()
            }
            .tabItem { NavigationItem.settings.label }
            .tag(NavigationItem.settings)
        }

    }
}
