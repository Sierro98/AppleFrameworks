//
//  HomeView.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 21/10/23.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("listDisplay") private var listDisplay: Bool = false
    
    var body: some View {
        TabView {
            FrameworksView()
                .tabItem {
                    Image(systemName: "apple.logo")
                    Text("Frameworks")
                }
            GeneralSettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

#Preview {
    HomeView()
}
