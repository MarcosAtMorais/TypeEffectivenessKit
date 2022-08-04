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
     - returns: some View with the ViewModifier applied
     - parameters:
        - colors: the horizontal spacing that both .leading and .trailing are going to minumumly have.
        - opacity: the vertical spacing that both .top and .bottom are going to minumumly have.
        - shadowRadius: a radius for the shadow that is going to be applied to the view.
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
