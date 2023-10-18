//
//  DetailView.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 17/10/23.
//

import SwiftUI

struct DetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            XDismissButton(isShowing: $isShowingDetailView)
            Spacer()
            Framework_Item(framework: framework)
                .padding(.bottom)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(text: "Learn More")
            }
            Spacer()
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://developer.apple.com")!)
        }
    }
}

#Preview {
    DetailView(framework: MockData.frameworks[0], isShowingDetailView: .constant(true))
}
