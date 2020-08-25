//
//  DashboardManager.swift
//  FitnessApp
//
//  Created by Anik on 12/8/20.
//

import SwiftUI

class DashboardManager: ObservableObject {
    
    @Published var dashboardMenus = menus
    @Published var selectedMenuIndex = 0
    
    func selectMenu(index: Int) {
        dashboardMenus[index].selected = true
        
        if index != selectedMenuIndex {
            
            dashboardMenus[selectedMenuIndex].selected = false
            selectedMenuIndex = index
        }
    }
}
