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
    @State private var player: AVAudioPlayer? = nil
    
    
    func compraSound(selectedIndex: Int) {
            let soundNames = [
                1: "cinesfx1",
                2: "cinesfx2",
                3: "cinesfx3",
                4: "cinesfx4",
                5: "cinesfx5",
                6: "cinesfx6"
            ]

            if let soundName = soundNames[selectedIndex],
               let url = Bundle.main.url(forResource: soundName, withExtension: "mp3") {
                do {
                    player = try AVAudioPlayer(contentsOf: url)
                    player?.play()
                } catch {
                    print("Error al reproducir sonido: \(error.localizedDescription)")
                }
            }
        }
        
//        if selectedProduct == 1 {
//            let sound = Bundle.main.url(forResource: "cinesfx1", withExtension: "mp3")!
//            let player = try! AVAudioPlayer(contentsOf: sound)
//            player.play()
//        }
//        
//        if selectedProduct == 2 {
//            let sound = Bundle.main.url(forResource: "cinesfx2", withExtension: "mp3")!
//            let player = try! AVAudioPlayer(contentsOf: sound)
//            player.play()
//        }
    
    var body: some View {
        VStack(alignment: .leading){
            
            // SECCIÓN 'combos'
            if selectedProduct == 1 {
                VStack (alignment: .leading){
                    Text("Combos Disponibles")
                        .font(.title).fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    ScrollView(.horizontal) {
                        HStack{
                            ZStack{
                                ItemRowView(item: "combo1", itemText: "Combo Nachos en Pareja", price: "$270 MXN"){
                                    compraSound(selectedIndex: 1)
                                }
                            }.background(Color.cine)
                                .cornerRadius(10)
                            
                            ZStack{
                                ItemRowView(item: "combo2", itemText: "Combo ICEE", price: "$286 MXN"){
                                    compraSound(selectedIndex: 1)
                                }
                            }.background(Color.cine)
                                .cornerRadius(10)
                            
                            ZStack{
                                ItemRowView(item: "combo3", itemText: "Maxicombo Mix", price: "$329 MXN"){
                                    compraSound(selectedIndex: 1)
                                }
                            }.background(Color.cine)
                                .cornerRadius(10)
                                
                        }
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(LinearGradient(gradient: Gradient(colors: [.teal, .pink]), startPoint: .topTrailing, endPoint: .bottomLeading))
                
                
            }
            
            // SECCIÓN 'palomitas'
            if selectedProduct == 2 {
                VStack(alignment: .leading){
                    Text("Palomitas Disponibles")
                        .font(.title).fontWeight(.bold)
                        .foregroundColor(Color.white)
                    
                    ScrollView(.horizontal){
                        HStack{
                            ZStack{
                                ItemRowView(item: "pop1", itemText: "Palomitas Mantequilla", price: "$250 MXN"){
                                    compraSound(selectedIndex: 1)
                                }
                            }.background(Color.gray)
                                .cornerRadius(10)
                            
                            ZStack{
                                ItemRowView(item: "pop2", itemText: "Palomitas Cheetos", price: "$250 MXN"){
                                    compraSound(selectedIndex: 1)
                                }
                            }.background(Color.gray)
                                .cornerRadius(10)
                            
                            ZStack{
                                ItemRowView(item: "pop3", itemText: "Palomitas Fuego", price: "$250 MXN"){
                                    compraSound(selectedIndex: 1)
                                }
                            }.background(Color.black)
                                .cornerRadius(10)
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .topTrailing, endPoint: .bottomLeading))
                
            }
            
            // Sección 'palomitas'
            if selectedProduct == 3 {
                Text("Bebidas Disponibles")
                    .font(.title).fontWeight(.bold)
                    .foregroundColor(Color.white)
                
                ScrollView(.horizontal){
                    HStack{
                        ZStack{
                            ItemRowView(item: "drink1", itemText: "Mundet", price: "$60 MXN"){
                                compraSound(selectedIndex: 1)
                            }
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "drink2", itemText: "ICEE", price: "$60 MXN"){
                                compraSound(selectedIndex: 1)
                            }
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "drink3", itemText: "Frappé", price: "$60 MXN"){
                                compraSound(selectedIndex: 1)
                            }
                        }.background(Color.gray)
                            .cornerRadius(10)
                    }
                }
                
            }
            
            if selectedProduct == 4 {
                Text("Alimentos Disponibles")
                    .font(.title).fontWeight(.bold)
                
                ScrollView(.horizontal){
                    HStack{
                        ZStack{
                            ItemRowView(item: "food1", itemText: "Hot Dog Jumbo", price: "$66 MXN"){
                                compraSound(selectedIndex: 1)
                            }
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "food2", itemText: "Quesadillas Guacamole", price: "$179 MXN"){
                                compraSound(selectedIndex: 1)
                            }
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "food3", itemText: "A", price: "$19 MXN"){
                                compraSound(selectedIndex: 1)
                            }
                        }.background(Color.gray)
                            .cornerRadius(10)
                    }
                }
                
            }
            
            if selectedProduct == 5 {
                Text("Snacks Disponibles")
                    .font(.title).fontWeight(.bold)
                
                ScrollView(.horizontal){
                    HStack{
                        ZStack{
                            ItemRowView(item: "snack1", itemText: "A", price: "$0 MXN"){
                                compraSound(selectedIndex: 1)
                            }
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "snack2", itemText: "A", price: "$0 MXN"){
                                compraSound(selectedIndex: 1)
                            }
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "snack3", itemText: "A", price: "$0 MXN"){
                                compraSound(selectedIndex: 1)
                            }
                        }.background(Color.gray)
                            .cornerRadius(10)
                    }
                }
                
            }
            
            if selectedProduct == 6 {
                Text("Postres Disponibles")
                    .font(.title).fontWeight(.bold)
                
                ScrollView(.horizontal){
                    HStack{
                        ZStack{
                            ItemRowView(item: "sweet1", itemText: "A", price: "$0 MXN"){
                                compraSound(selectedIndex: 1)
                            }
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "sweet2", itemText: "A", price: "$0 MXN"){
                                compraSound(selectedIndex: 1)
                            }
                        }.background(Color.gray)
                            .cornerRadius(10)
                        
                        ZStack{
                            ItemRowView(item: "sweet3", itemText: "A", price: "$0 MXN"){
                                compraSound(selectedIndex: 1)
                            }
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
