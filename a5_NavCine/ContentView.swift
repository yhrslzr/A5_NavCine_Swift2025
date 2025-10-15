//
//  ContentView.swift
//  a5_NavCine
//
//  Created by WIN603 on 03/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack{
                    Text("Bienvenid@ a Dulcería Cinépolis").font(.title)
                    
                    // Fila 1
                    HStack {
                        
                        // 'Combos'
                        NavigationLink(destination: ProductView(selectedProduct: 1)){
                            ZStack{
                                ItemGridView(item: "combos", itemText: "Combos")
                                
                            }.background(LinearGradient(gradient: Gradient(colors: [.teal,.pink]), startPoint: .topTrailing, endPoint: .bottomLeading))
                                .cornerRadius(10)
                        }
                        
                        // 'Palomitas'
                        NavigationLink(destination: ProductView(selectedProduct: 2)){
                            ZStack{
                                ItemGridView(item: "palomitas", itemText: "Palomitas")
                            }.background(LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .topTrailing, endPoint: .bottomLeading)).cornerRadius(10)
                        }
                    }
                    
                    // Fila 2
                    HStack {
                        ZStack{
                            ItemGridView(item: "bebidas", itemText: "Bebidas")
                        }
                        .background(LinearGradient(gradient: Gradient(colors: [.blue, .cyan]), startPoint: .topTrailing, endPoint: .bottomLeading))
                        .cornerRadius(10)
                        
                        ZStack{
                            ItemGridView(item: "alimentos", itemText: "Alimentos")
                        }.background(LinearGradient(gradient: Gradient(colors: [.orange, .yellow]), startPoint: .topTrailing, endPoint: .bottomLeading)).cornerRadius(10)
                    }
                    
                    // Fila 3
                    HStack {
                        ZStack{
                            ItemGridView(item: "snacks", itemText: "Snacks")
                        }.background(LinearGradient(gradient: Gradient(colors: [.mint, .green]), startPoint: .topTrailing, endPoint: .bottomLeading)).cornerRadius(10)
                        
                        ZStack{
                            ItemGridView(item: "postres", itemText: "Postres")
                        }.background(LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .topTrailing, endPoint: .bottomLeading)).cornerRadius(10)
                    }
                    
                }
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
