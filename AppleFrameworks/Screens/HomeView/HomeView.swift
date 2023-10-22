//
//  HomeView.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 21/10/23.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("listDisplay") private var listDisplay: Bool = false
    @AppStorage("lightTheme") private var lightTheme: Bool = false
    @AppStorage("darkTheme") private var darkTheme: Bool = false
    @AppStorage("systemTheme") private var systemTheme: Bool = true
    
    var body: some View {
        TabView {
            if listDisplay == false {
                FrameworksView(listDisplay: $listDisplay)
                    .tabItem {
                        Image(systemName: "apple.logo")
                        Text("Frameworks")
                    }
            } else {
                FrameworksListView(listDisplay: $listDisplay)
                    .tabItem {
                        Image(systemName: "apple.logo")
                        Text("Frameworks")
                    }
            }
            GeneralSettingsView(listDisplay: $listDisplay,
                                lightTheme: $lightTheme,
                                darkTheme: $darkTheme,
                                systemTheme: $systemTheme)
            .tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
        }
        .onAppear {
            SystemThemeManager
                .shared
                .handleTheme(lightTheme: lightTheme,
                             darkTheme: darkTheme,
                             systemTheme: systemTheme)
        }
    }
}

#Preview {
    HomeView()
}
