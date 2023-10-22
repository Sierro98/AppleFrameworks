//
//  GeneralSettingsView.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 18/10/23.
//

import SwiftUI

struct GeneralSettingsView: View {
    
    @Binding var listDisplay: Bool
    @Binding var lightTheme: Bool
    @Binding var darkTheme: Bool
    @Binding var systemTheme: Bool
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Display"),
                        footer: Text("Select if you prefer a list style for the frameworks list.")) {
                    Toggle("List Style", isOn: $listDisplay)
                }
                Section(header: Text("Theme")) {
                    Toggle("Light Theme", isOn: $lightTheme)
                        .onChange(of: lightTheme) { oldValue, newValue in
                            if newValue {
                                darkTheme = false
                                systemTheme = false
                            }
                            SystemThemeManager
                                .shared
                                .handleTheme(lightTheme: lightTheme,
                                             darkTheme: darkTheme,
                                             systemTheme: systemTheme)
                        }
                    Toggle("Dark Theme", isOn: $darkTheme)
                        .onChange(of: darkTheme) { oldValue, newValue in
                            if newValue {
                                lightTheme = false
                                systemTheme = false
                            }
                            SystemThemeManager
                                .shared
                                .handleTheme(lightTheme: lightTheme,
                                             darkTheme: darkTheme,
                                             systemTheme: systemTheme)
                        }
                    Toggle("System Theme", isOn: $systemTheme)
                        .onChange(of: systemTheme) { oldValue, newValue in
                            if newValue {
                                lightTheme = false
                                darkTheme = false
                            }
                            SystemThemeManager
                                .shared
                                .handleTheme(lightTheme: lightTheme,
                                             darkTheme: darkTheme,
                                             systemTheme: systemTheme)
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
    GeneralSettingsView(listDisplay: .constant(false),
                        lightTheme: .constant(false),
                        darkTheme: .constant(false),
                        systemTheme: .constant(true))
}
