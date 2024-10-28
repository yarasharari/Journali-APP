//
//  Journali_APPApp.swift
//  Journali APP
//
//  Created by Yara Alsharari on 14/04/1446 AH.
//

import SwiftUI
import SwiftData

@main
struct Journali_APPApp : App {
    var body: some Scene {
        WindowGroup {
            Splash()
        }.modelContainer(for: Journal.self)
    }
}
