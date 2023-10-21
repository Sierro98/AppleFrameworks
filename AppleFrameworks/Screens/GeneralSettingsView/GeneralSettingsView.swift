//
//  GeneralSettingsView.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 18/10/23.
//

import SwiftUI

struct GeneralSettingsView: View {
    
    @State var toggleList: Array<Bool> = [true, false, false]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Display"),
                        footer: Text("Select if you prefer a list style for the frameworks list.")) {
                    Toggle(isOn: .constant(false)) {
                        Text("List Style")
                    }
                }
                Section(header: Text("Theme")) {
                    Toggle(isOn: $toggleList[0]) {
                        Text("Light Theme")
                    }
                    Toggle(isOn: $toggleList[1]) {
                        Text("Dark Theme")
                    }
                    Toggle(isOn: $toggleList[2]) {
                        Text("System Theme")
                    }
                }
                Section {
                    Link(destination: URL(string: "https://www.linkedin.com/in/alejandro-sierro-galán-15016b261/")!) {
                        Label("Connect with me in LinkedIn", systemImage: "link")
                            .font(.headline)
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}
#Preview {
    GeneralSettingsView()
}
