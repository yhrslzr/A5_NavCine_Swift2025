//
//  ItemgGridView.swift
//  a5_NavCine
//
//  Created by WIN603 on 06/10/25.
//

import SwiftUI

struct ItemGridView: View {
    var item: String
    var itemText: String
    
    // colores
    var firstColor: Color
    var secColor: Color
    
    var body: some View {
        
        ZStack{
            Image(item)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .offset(x: 0, y: -20)
              
            Text(itemText.uppercased()).font(.system(size: 30, weight: .bold, design: .default)).foregroundColor(.white).offset(x: 0, y: 80)
        }
        .frame(width: 180, height: 280)
        .background(LinearGradient(gradient: Gradient(colors: [firstColor,secColor]), startPoint: .topTrailing, endPoint: .bottomLeading))
            .cornerRadius(10)
    }
}

#Preview {
    ItemGridView(item: "combos", itemText: "Combos", firstColor: .teal, secColor: .pink)
}
