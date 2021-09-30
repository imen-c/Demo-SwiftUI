//
//  formulaireSwitUIApp.swift
//  formulaireSwitUI
//
//  Created by Student04 on 29/09/2021.
//

import SwiftUI

@main
struct formulaireSwitUIApp: App {
    @StateObject var appModel = AppModel()
    var body: some Scene {
        WindowGroup {
            Tab()
                .environmentObject(appModel)
            
        }
    }
}
