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
    @State var comprar: Bool = false
    
    var onComprar: (() -> Void)? = nil
    
    func comprarItem(){
        comprar.toggle()
        if comprar {
            onComprar?()
        }
    }
    
    
    var body: some View {
        Button (action: {comprarItem()})
        {
            VStack {
                Image(item)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                
                VStack(alignment: .leading){
                    Text(itemText).font(.title)
                    Text(price).fontWeight(.semibold).font(.body)
                }
            }.padding(10)
                .foregroundStyle(Color(.black))
        }
        .alert(
            "Compra exitosa",
            isPresented: $comprar
        ) {
            Button("OK") {
                comprar = false
            }
        } message: {
            Text("Has comprado \(itemText)")
        }
    }
}

#Preview {
    ItemRowView(item: "", itemText: "", price: "")
}
