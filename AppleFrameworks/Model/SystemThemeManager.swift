//
//  SystemThemeManager.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 22/10/23.
//

import Foundation
import UIKit

class SystemThemeManager {
    static let shared = SystemThemeManager()
    
    private init() {}
    
    func handleTheme(lightTheme: Bool, darkTheme: Bool, systemTheme: Bool) {
        
        guard !systemTheme else {
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                for window in windowScene.windows {
                    window.overrideUserInterfaceStyle = .unspecified
                }
            }
            return
        }
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            for window in windowScene.windows {
                if lightTheme == true {
                    window.overrideUserInterfaceStyle = .light
                }
                if darkTheme == true {
                    window.overrideUserInterfaceStyle = .dark
                }
            }
        }
    }
}
