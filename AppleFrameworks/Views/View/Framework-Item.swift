//
//  Framework-Item.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 17/10/23.
//

import SwiftUI

struct Framework_Item: View {
    
    let framework: Framework
    
    var body: some View {
        VStack(spacing: 5) {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title3)
                .fontWeight(.medium)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    Framework_Item(framework: MockData.frameworks[0])
}
