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
        VStack(alignment: .leading){
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
                Text("Palomitas Disponibles")
                HStack{
                    ZStack{
                        ItemRowView(item: "pop1", itemText: "Palomitas", price: "$250 MXN")
                    }.background(Color.gray)
                        .cornerRadius(10)
                }
            }
            
            // Sección 'palomitas'
            if selectedProduct == 3 {
                Text("Bebidas Disponibles")
                HStack{
                    ZStack{
                        ItemRowView(item: "drink1", itemText: "Fanta", price: "$60 MXN")
                    }.background(Color.gray)
                        .cornerRadius(10)
                    
                    ZStack{
                        ItemRowView(item: "drink2", itemText: "Sprite", price: "$60 MXN")
                    }.background(Color.gray)
                        .cornerRadius(10)
                }
                
            }
            
            if selectedProduct == 4 {
                Text("Alimentos Disponibles")
                HStack{
                    ZStack{
                        ItemRowView(item: "food1", itemText: "Hot Dog", price: "$60 MXN")
                    }.background(Color.gray)
                        .cornerRadius(10)
                    
                    ZStack{
                        ItemRowView(item: "food2", itemText: "Quesadillas Guacamole", price: "$179 MXN")
                    }.background(Color.gray)
                        .cornerRadius(10)
                }
                
            }
            
        }
    }
}

#Preview {
    ProductView()
}
