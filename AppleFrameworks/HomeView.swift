//
//  HomeView.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 16/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        let layout = Array(repeating: GridItem(.flexible()), count: 3)
        let frameworks: [Framework] = MockData.frameworks
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout, spacing: 40) {
                    ForEach(frameworks) { framework in
                        Framework_Item(framework: framework)
                    }
                }
                .padding()
            }
            .navigationTitle("Apple Frameworks")
        }
    }
}

#Preview {
    HomeView()
}
