//
//  SwiftUIView.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import SwiftUI

/**
 A view that houses the title for the TypeHGridView.
 */
public struct TypeHGridTitleView: View {
    
    /// A binding to the title that will compose the TitleView.
    @Binding var title: String
    
    public init(title: Binding<String>) {
        self._title = title
    }
    
    public var body: some View {
        HStack {
            Text(title)
                .stylizeCaption()
                .padding([.all], 5.5)
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .fillGradientOpacityAndShadow(using: [.pink, .purple], opacity: 0.45, shadowRadius: 2)
                }
            Spacer()
        }
        .padding([.leading, .trailing], 15)
    }
}

struct TypeHGridTitleView_Previews: PreviewProvider {
    static var previews: some View {
        TypeHGridTitleView(title: .constant("Types"))
    }
}
