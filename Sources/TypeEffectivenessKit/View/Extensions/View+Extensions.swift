//
//  View+Extensions.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import SwiftUI

extension View {
    func stylizeHeadline(using color: Color = .primary) -> some View {
        modifier(StylizeHeadline(color: color))
    }
}
