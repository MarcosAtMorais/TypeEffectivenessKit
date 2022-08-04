//
//  AllSidesSpacer.swift
//  
//
//  Created by Marcos Morais on 01/08/22.
//

import SwiftUI
import Foundation

/**
 Create a SwiftUI view where the content is aligned correctly both vertically and horizontally, using a minimum spacing/padding if needed. If not, 0 spacing would do the trick.
 */
struct AllSidesSpacer: ViewModifier {
    
    /// Horizontal spacing/padding that both .leading and .trailing are going to minumumly have.
    @State var horizontalPadding: CGFloat = 5
    /// Hertical spacing/padding that both .top and .bottom are going to minumumly have.
    @State var verticalPadding: CGFloat = 5
    
    /**
     - returns: some View with the ViewModifier applied
     - parameters:
        - horizontalPadding: the horizontal spacing that both .leading and .trailing are going to minumumly have.
        - verticalPadding: the vertical spacing that both .top and .bottom are going to minumumly have.
     */
    func body(content: Content) -> some View {
        VStack {
            Spacer(minLength: verticalPadding)
            HStack {
                Spacer(minLength: horizontalPadding)
                content
                Spacer(minLength: horizontalPadding)
            }
            Spacer(minLength: verticalPadding)
        }
    }
    
}
