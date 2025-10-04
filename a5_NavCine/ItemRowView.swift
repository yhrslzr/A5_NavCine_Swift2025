//
//  ItemRowView.swift
//  a5_NavCine
//
//  Created by WIN603 on 03/10/25.
//

import SwiftUI

struct ItemRowView: View {
    
    var item: String = "palomitas"
    var itemText: String = "Palomitas"
    var price: String = "$1.00 MXN"
    
    var body: some View {
        HStack {
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

struct ItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRowView()
    }
}
