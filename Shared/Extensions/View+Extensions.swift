//
//  View+Extensions.swift
//  ReduxAsync
//
//  Created by Mohammad Azam on 9/21/20.
//

import Foundation
import SwiftUI 

extension View {
    
    func embedInNavigationView() -> some View {
        NavigationView { self }
    }
    
}
