//
//  GeneralSettingsView.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 18/10/23.
//

import SwiftUI

struct GeneralSettingsView: View {
    
    @State private var lightTheme = true
    @State private var darkTheme = false
    @State private var systemTheme = false
    
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
                    Toggle("Light Theme", isOn: $lightTheme)
                        .onChange(of: lightTheme) { oldValue, newValue in
                            if newValue {
                                darkTheme = false
                                systemTheme = false
                            }
                        }
                    Toggle("Dark Theme", isOn: $darkTheme)
                        .onChange(of: darkTheme) { oldValue, newValue in
                            if newValue {
                                lightTheme = false
                                systemTheme = false
                            }
                        }
                    Toggle("System Theme", isOn: $systemTheme)
                        .onChange(of: systemTheme) { oldValue, newValue in
                            if newValue {
                                lightTheme = false
                                darkTheme = false
                            }
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
