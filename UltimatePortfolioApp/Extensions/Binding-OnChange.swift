//
//  Binding-OnChange.swift
//  UltimatePortfolioApp
//
//  Created by Chase McElroy on 1/30/21.
//

import SwiftUI

extension Binding {
    func onChange(_ handler: @escaping () -> Void) -> Binding<Value> {
        Binding(
            get: { self.wrappedValue },
            set: { newValue in
                self.wrappedValue = newValue
                handler()
            }
        )
    }
}
