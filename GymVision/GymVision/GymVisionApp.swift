//
//  GymVisionApp.swift
//  GymVision
//
//  Created by Vanessa Chambers on 2/14/24.
//

import SwiftUI

@main
struct GymVisionApp: App {
    var themeManager = ThemeManager()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(themeManager)
        }
    }
}
