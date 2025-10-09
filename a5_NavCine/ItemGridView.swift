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
    
    var body: some View {
        
        ZStack{
            Image(item)
                .resizable()
                .frame(width: 180, height: 280)
            
            Text(itemText.uppercased()).font(.system(size: 30, weight: .bold, design: .default)).foregroundColor(.white)
        }
    }
}

#Preview {
    ItemGridView(item: "palomitas", itemText: "palomitas")
}
