//
//  DetailView.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 17/10/23.
//

import SwiftUI

struct DetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            Spacer()
            Framework_Item(framework: framework)
                .padding(.bottom)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                
            } label: {
                Text("Learn More")
                    .foregroundStyle(.white)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 250, height: 50)
                    .background(Color("ButtonRed"))
                    .clipShape(.buttonBorder)
            }
            Spacer()
        }
    }
}

#Preview {
    DetailView(framework: MockData.frameworks[0])
}
