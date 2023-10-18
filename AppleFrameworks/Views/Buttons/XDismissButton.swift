//
//  XDismissButton.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 18/10/23.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowing = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

struct XDismissButton_Preview: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowing: .constant(false))
    }
}
