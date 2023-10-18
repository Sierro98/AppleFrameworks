//
//  GeneralSettingsView.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 18/10/23.
//

import SwiftUI

struct GeneralSettingsView: View {
    @AppStorage("displayStyle") private var displayStyle = "GRID"


    var body: some View {
        Form {
            List {
                Picker("Flavor", selection: $displayStyle) {
                    Text("Grid").tag("GRID")
                    Text("List").tag("LIST")
                }
            }
        }
    }
}
#Preview {
    GeneralSettingsView()
}
