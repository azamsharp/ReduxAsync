//
//  HelloReduxApp.swift
//  Shared
//
//  Created by Mohammad Azam on 9/14/20.
//

import SwiftUI

@main
struct HelloReduxApp: App {
    var body: some Scene {
       
        let store = Store(reducer: appReducer, state: AppState(),
                          middlewares: [moviesMiddleware()])
        
        WindowGroup {
            ContentView().environmentObject(store)
        }
    }
}
