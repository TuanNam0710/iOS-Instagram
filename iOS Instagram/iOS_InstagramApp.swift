//
//  iOS_InstagramApp.swift
//  iOS Instagram
//
//  Created by Phạm Lê Tuấn Nam on 03/12/2021.
//

import SwiftUI

@main
struct iOS_InstagramApp: App {
    var body: some Scene {
        WindowGroup {
            LoginView()
                .navigationTitle("")
                .navigationBarHidden(true)
        }
    }
}
