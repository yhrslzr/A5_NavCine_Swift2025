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
                    Text("Bienvenid@ a Cinépolis")
                        .font(.title).fontWeight(.bold)
                        
                    
                    // Fila 1
                    HStack {
                        
                        // 'Combos'
                        NavigationLink(destination: ProductView(selectedProduct: 1)){
                            ZStack{
                                ItemGridView(item: "combos", itemText: "Combos", firstColor: .teal, secColor: .pink)
    
                            }
                        }
                        
                        // 'Palomitas'
                        NavigationLink(destination: ProductView(selectedProduct: 2)){
                            ZStack{
                                ItemGridView(item: "palomitas", itemText: "Palomitas", firstColor: .purple, secColor: .blue)
                            }
                        }
                    }
                    
                    // Fila 2
                    HStack {
                        
                        // 'Bebidas'
                        NavigationLink(destination: ProductView(selectedProduct: 3)){
                            ZStack{
                                ItemGridView(item: "bebidas", itemText: "Bebidas", firstColor: .blue, secColor: .cyan)
                            }
                        }
                        
                        // 'Alimentos'
                        NavigationLink(destination: ProductView(selectedProduct: 4)){
                            ZStack{
                                ItemGridView(item: "alimentos", itemText: "Alimentos", firstColor: .orange, secColor: .yellow)
                            }
                        }
                    }
                    
                    // Fila 3
                    HStack {
                        NavigationLink(destination: ProductView(selectedProduct: 5)){
                            ZStack{
                                ItemGridView(item: "snacks", itemText: "Snacks", firstColor: .mint, secColor: .green)
                            }
                        }
                        
                        NavigationLink(destination: ProductView(selectedProduct: 6)){
                            ZStack{
                                ItemGridView(item: "postres", itemText: "Postres", firstColor: .purple, secColor: .pink)
                            }
                        }
                    }
                    // FIN FILA 3
                    
                }
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
