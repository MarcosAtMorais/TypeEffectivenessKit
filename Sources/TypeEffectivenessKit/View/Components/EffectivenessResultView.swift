//
//  EffectivenessResultView.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import SwiftUI

/**
 The effectiveness result view. It houses an Effectiveness binding that *must* be provided to be rendered.
 */
public struct EffectivenessResultView: View {
    
    /// This result is provided by the calculation made in the ViewModel.
    @Binding var result: Effectiveness
    
    // MARK: - Initializer
    public init(result: Binding<Effectiveness>) {
        self._result = result
    }
    
    // MARK: - View
    public var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(LinearGradient(colors: [.gray.opacity(0.2), .gray.opacity(0.5), .gray], startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(maxWidth: .infinity, maxHeight: 50)
            .overlay {
                Text(result.localized)
                    .stylizeHeadline(using: .primary)
            }
            .padding([.leading, .trailing, .bottom], 15)
    }
}

struct EffectivenessResultView_Previews: PreviewProvider {
    static var previews: some View {
        EffectivenessResultView(result: .constant(.effective))
    }
}
