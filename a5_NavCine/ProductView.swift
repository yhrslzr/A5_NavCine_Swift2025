//
//  ProductView.swift
//  a5_NavCine
//
//  Created by WIN603 on 08/10/25.
//

import SwiftUI

struct ProductView: View {
    @State var selectedProduct: Int?
    var body: some View {
        VStack(alignment: .trailing){
            // Sección 'combos'
            if selectedProduct == 1 {
                Text("Combos Disponibles")
                HStack{
                    ZStack{
                        ItemRowView(item: "combo1", itemText: "Combo Pareja", price: "$250 MXN")
                    }.background(Color.gray)
                        .cornerRadius(10)
                }
            }
            
            // Sección 'palomitas'
            if selectedProduct == 2 {
                ZStack{
                    ItemRowView(item: "pop1", itemText: "Palomitas", price: "$250 MXN")
                }.background(LinearGradient(gradient: Gradient(colors: [.teal,.pink]), startPoint: .topTrailing, endPoint: .bottomLeading))
                    .cornerRadius(10)
            }
            
        }
    }
}

#Preview {
    ProductView()
}
