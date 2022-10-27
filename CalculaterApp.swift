//
//  CalculaterApp.swift
//  Calculater
//
//  Created by G Bannikoppa, Naveen on 26/10/22.
//

import SwiftUI

@main
struct CalculaterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ContentView.ViewModel())
        }
    }
}
