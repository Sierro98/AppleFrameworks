//
//  HomeView.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 16/10/23.
//

import SwiftUI

struct FrameworksListView: View {
    
    @StateObject var viewmodel = FrameworksViewModel()
    let frameworks: [Framework] = MockData.frameworks
    @Binding var listDisplay: Bool
    
    var body: some View {
        NavigationView {
            List {
                ForEach(frameworks) { framework in
                    NavigationLink(destination:
                                    DetailView(framework: framework,
                                               isShowingDetailView: $viewmodel.isShowingDetailView,
                                               listDisplay: $listDisplay)) {
                        Framework_ItemList(framework: framework)
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworksListView(listDisplay: .constant(true))
}
