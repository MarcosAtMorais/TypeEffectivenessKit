//
//  TypeEffectivenessView.swift
//  
//
//  Created by Marcos Morais on 03/08/22.
//

import SwiftUI

struct TypeEffectivenessView: View {
    
    @StateObject var typeEffectivenessViewModel: TypeEffectivenessViewModel = TypeEffectivenessViewModel(firstType: .water, secondType: .ground, moveType: .grass)
        
    var body: some View {
        NavigationView {
            VStack {
                RoundedRectangle(cornerRadius: 12)
                    .fill(LinearGradient(colors: [.gray.opacity(0.2), .gray.opacity(0.5), .gray], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .overlay {
                        Text(typeEffectivenessViewModel.result)
                            .font(.system(.headline, design: .rounded))
                            .foregroundColor(.primary)
                    }
                    .padding()
                TypeHGridView(selectedType: $typeEffectivenessViewModel.firstType, typeViewModel: typeEffectivenessViewModel.firstTypeViewModel)
                Spacer().frame(height: 20)
                TypeHGridView(selectedType: $typeEffectivenessViewModel.secondType, typeViewModel: typeEffectivenessViewModel.secondTypeViewModel)
                Spacer().frame(height: 40)
                TypeHGridView(selectedType: $typeEffectivenessViewModel.moveType, typeViewModel: typeEffectivenessViewModel.moveTypeViewModel)
            }
            .navigationTitle("Type Effectiveness")
        }
        .onAppear {
            self.typeEffectivenessViewModel.makeOnSelect()
        }
        
    }
    

    
}

struct TypeEffectivenessView_Previews: PreviewProvider {
    static var previews: some View {
        TypeEffectivenessView()
            .preferredColorScheme(.dark)
    }
}
