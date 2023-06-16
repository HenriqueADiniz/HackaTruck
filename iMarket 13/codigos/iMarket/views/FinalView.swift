//
//  FinalView.swift
//  iMarket
//
//  Created by Student09 on 15/06/23.
//

import SwiftUI
import WrappingHStack

struct FinalView: View {
    @StateObject var supermercadomodel = SupermercadoModel()
    @State public var valorTotal = 0.0
    @State var selProducts : [Produtos]
    @State var selSupermercado : [Supermercado]
    @State var total = 0.0
    
    var body: some View {
        VStack{
            ForEach(supermercadomodel.cotacao, id:\.nome) { product in
//                if product.total! != 0 {
                WrappingHStack {
//                        total = total + product.total!
                        AsyncImage(url: URL(string: "\(product.logo!)")){ image in
                            image
                                .resizable()
                                .frame(width: 100.0, height: 100.0)
                                .aspectRatio(contentMode: .fill)
                                .padding([.top, .leading, .trailing],20)
                        } placeholder: {}
                            .frame(width: 170, height: 100)
                    VStack{
                        HStack{
                            Text(product.nome!)
                            Spacer()
                        }
                        HStack{
                            Text("R$ \(String(format: "%.2f", product.total!))")
                            Spacer()
                        }
                    }
                    }
//                }
                
                
                
//                ForEach(product.produtos!, id: \.id) { product in
//                    Text(product.nome)
//                }
                
            }
//
//            if total == 0.0 {
//                Text("NÃO TEM")
//            }
        }.onAppear(){
            supermercadomodel.preco(selProducts, selSupermercado)
        }
    }
}
