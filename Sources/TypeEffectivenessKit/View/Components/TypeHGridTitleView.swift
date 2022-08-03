//
//  SwiftUIView.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import SwiftUI

struct TypeHGridTitleView: View {
    
    @Binding var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .stylizeHeadline()
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
