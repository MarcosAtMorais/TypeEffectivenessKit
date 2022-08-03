//
//  StylizeCaption.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import Foundation
import SwiftUI

struct StylizeCaption: ViewModifier {
    
    @State var color: Color
    
    func body(content: Content) -> some View {
        content
            .font(.system(.caption, design: .rounded).bold())
            .minimumScaleFactor(0.25)
            .foregroundColor(color)
    }
    
}
