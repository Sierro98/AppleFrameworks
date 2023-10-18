//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 18/10/23.
//

import SwiftUI

struct AFButton: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .foregroundStyle(.white)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 250, height: 50)
            .background(Color("ButtonRed"))
            .clipShape(.buttonBorder)
    }
}

#Preview {
    AFButton(text: "Learn More")
}
