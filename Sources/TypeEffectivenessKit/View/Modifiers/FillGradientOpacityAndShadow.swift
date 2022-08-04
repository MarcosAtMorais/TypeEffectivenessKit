//
//  FillGradientOpacityAndShadow.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation
import SwiftUI

/**
 Applies background, opacity, shadow and masks a SwiftUI view with given parameters. A gradient composes the background.
 */
struct FillGradientOpacityAndShadow: ViewModifier {
    
    /// The colors of given Gradient
    @State var colors: [Color]
    
    /// The opacity of the View
    @State var opacity: CGFloat
    
    /// A radius for the shadow. If not needed, use 0.
    @State var shadowRadius: CGFloat
    
    /**
     - parameters:
        - colors: the colors that will compose the background gradient.
        - opacity: the opacity of the whole background view.
        - shadowRadius: a radius for the shadow that is going to be applied to the view.
     - returns: The view with the ViewModifier applied.
     */
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
