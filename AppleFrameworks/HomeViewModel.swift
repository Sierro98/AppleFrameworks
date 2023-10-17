//
//  HomeViewModel.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 17/10/23.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView: Bool  = false
}
