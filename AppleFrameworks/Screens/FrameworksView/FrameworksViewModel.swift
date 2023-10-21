//
//  HomeViewModel.swift
//  AppleFrameworks
//
//  Created by Alejandro Sierro Galán on 17/10/23.
//

import SwiftUI

final class FrameworksViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView: Bool  = false
}
