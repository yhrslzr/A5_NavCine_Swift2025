//
//  ItemRowView.swift
//  a5_NavCine
//
//  Created by WIN603 on 03/10/25.
//

import SwiftUI

struct ItemRowView: View {
    
    var item: String
    var itemText: String
    var price: String
    
    var body: some View {
        VStack {
            Image(item)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            
            VStack(alignment: .leading){
                Text(itemText).font(.title)
                Text(price).fontWeight(.semibold).font(.body)
            }
        }
    }
}

#Preview {
    ItemRowView(item: "", itemText: "", price: "")
}
