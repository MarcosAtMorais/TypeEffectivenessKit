//
//  FillGradientOpacityAndShadow.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation
import SwiftUI

struct FillGradientOpacityAndShadow: ViewModifier {
    
    @State var colors: [Color]
    @State var opacity: CGFloat
    @State var shadowRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(.clear)
            .background {
                LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing)
            }
            .opacity(opacity)
            .shadow(radius: shadowRadius)
            .mask {
                content
            }
    }
}
