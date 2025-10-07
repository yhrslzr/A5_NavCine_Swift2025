//
//  ItemgGridView.swift
//  a5_NavCine
//
//  Created by WIN603 on 06/10/25.
//

import SwiftUI

struct ItemGridView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    var item: String = "palomitas"
    var itemText: String = "Palomitas"
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                VStack{
                    HStack {
                        ZStack{
                            Image(item)
                                .resizable()
                                .frame(width: 120, height: 120)
                            
                            Text(itemText).font(.title)
                        }.background(LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .topTrailing, endPoint: .bottomLeading))
                        
                        ZStack{
                            Image(item)
                                .resizable()
                                .frame(width: 120, height: 120)
                            
                            Text(itemText).font(.title)
                        }.background(LinearGradient(gradient: Gradient(colors: [.white, .orange]), startPoint: .topTrailing, endPoint: .bottomLeading))
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ItemGridView()
}
