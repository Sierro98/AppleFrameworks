//
//  Framework-Item.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 17/10/23.
//

import SwiftUI

struct Framework_ItemList: View {
    
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title3)
                .fontWeight(.medium)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

#Preview {
    Framework_ItemList(framework: MockData.frameworks[0])
}
