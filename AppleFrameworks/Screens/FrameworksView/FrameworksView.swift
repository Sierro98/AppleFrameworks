//
//  HomeView.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 16/10/23.
//

import SwiftUI

struct FrameworksView: View {
    
    @StateObject var viewmodel = FrameworksViewModel()
    let layout = Array(repeating: GridItem(.flexible()), count: 3)
    let frameworks: [Framework] = MockData.frameworks
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout, spacing: 40) {
                    ForEach(frameworks) { framework in
                        Framework_Item(framework: framework)
                            .onTapGesture {
                                viewmodel.selectedFramework = framework
                                viewmodel.isShowingDetailView = true
                            }
                    }
                }
                .padding()
            }
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewmodel.isShowingDetailView) {
                DetailView(framework: viewmodel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewmodel.isShowingDetailView)
            }
        }
    }
}

#Preview {
    FrameworksView()
}
