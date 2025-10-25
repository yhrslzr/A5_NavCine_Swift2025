//
//  ProductView.swift
//  a5_NavCine
//
//  Created by WIN603 on 08/10/25.
//

import SwiftUI
import AVFAudio

struct ProductView: View {
    @State var selectedProduct: Int?
    
    
    func compraSound(selectedProduct: Int){
        if selectedProduct == 1 {
            let sound = Bundle.main.url(forResource: "combosfx", withExtension: "mp3")!
            let player = try! AVAudioPlayer(contentsOf: sound)
            player.play()
        }
        
        if selectedProduct == 2 {
            let sound = Bundle.main.url(forResource: "combosfx", withExtension: "mp3")!
            let player = try! AVAudioPlayer(contentsOf: sound)
            player.play()
        }
        
        
    }
    
    var body: some View {
        VStack(alignment: .leading){
            // Sección 'combos'
            if selectedProduct == 1 {
                Text("Combos Disponibles")
                ScrollView(.horizontal) {
                    HStack{
                        ZStack{
                            ItemRowView(item: "combo1", itemText: "Combo Pareja", price: "$250 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "combo2", itemText: "Combo ICEE", price: "$250 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "combo3", itemText: "Combo Nachos", price: "$250 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                            
                    }
                }
                
            }
            
            // Sección 'palomitas'
            if selectedProduct == 2 {
                Text("Palomitas Disponibles")
                ScrollView(.horizontal){
                    HStack{
                        ZStack{
                            ItemRowView(item: "pop1", itemText: "Palomitas Mantequilla", price: "$250 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "pop2", itemText: "Palomitas Cheetos", price: "$250 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "pop3", itemText: "Palomitas Fuego", price: "$250 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                    }
                }
            }
            
            // Sección 'palomitas'
            if selectedProduct == 3 {
                Text("Bebidas Disponibles")
                ScrollView(.horizontal){
                    HStack{
                        ZStack{
                            ItemRowView(item: "drink1", itemText: "Fanta", price: "$60 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "drink2", itemText: "Mundet", price: "$60 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "drink3", itemText: "Sprite", price: "$60 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                    }
                }
                
            }
            
            if selectedProduct == 4 {
                Text("Alimentos Disponibles")
                ScrollView(.horizontal){
                    HStack{
                        ZStack{
                            ItemRowView(item: "food1", itemText: "Hot Dog", price: "$100 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "food2", itemText: "Quesadillas Guacamole", price: "$179 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "food3", itemText: "A", price: "$19 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                    }
                }
                
            }
            
            if selectedProduct == 5 {
                Text("Snacks Disponibles")
                ScrollView(.horizontal){
                    HStack{
                        ZStack{
                            ItemRowView(item: "snack1", itemText: "A", price: "$0 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "snack2", itemText: "A", price: "$0 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "snack3", itemText: "A", price: "$0 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                    }
                }
                
            }
            
            if selectedProduct == 6 {
                Text("Postres Disponibles")
                ScrollView(.horizontal){
                    HStack{
                        ZStack{
                            ItemRowView(item: "sweet1", itemText: "A", price: "$0 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "sweet2", itemText: "A", price: "$0 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "sweet3", itemText: "A", price: "$0 MXN")
                        }.background(Color.gray)
                            .cornerRadius(10)
                    }
                }
                
            }
            
        }
    }
}

#Preview {
    ProductView()
}
