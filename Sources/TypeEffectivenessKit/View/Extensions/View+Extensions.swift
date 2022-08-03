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
    
    func stylizeCaption(using color: Color = .primary) -> some View {
        modifier(StylizeCaption(color: color))
    }
    
    func fillGradientOpacityAndShadow(using colors: [Color] = [.purple, .pink], opacity: CGFloat = 0.25, shadowRadius: CGFloat = 2) -> some View {
        modifier(FillGradientOpacityAndShadow(colors: colors, opacity: opacity, shadowRadius: shadowRadius))
    }
}
