//
//  Framework-Item.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 17/10/23.
//

import SwiftUI

struct Framework_Item: View {
    
    let image: String
    let title: String
    
    var body: some View {
        VStack(spacing: 5) {
            Image(image)
                .resizable()
                .frame(width: 90, height: 90)
            Text(title)
                .font(.title3)
                .fontWeight(.medium)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}

#Preview {
    Framework_Item(image: "app-clip", title: "AppClips")
}
