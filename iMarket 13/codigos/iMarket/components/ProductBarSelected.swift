//
//  ProductBarSelected.swift
//  iMarket
//
//  Created by Student08 on 13/06/23.
//

import SwiftUI

struct ProductBarSelected: View {
    
    @State var product : Produtos
    @State var quantify: Int = 0
    
    private let cardWidth: CGFloat = 350
    private let cardHeight: CGFloat = 165
    private let imageWidth: CGFloat = 170
    private let imageHeight: CGFloat = 163
    private let cornerRadius: CGFloat = 5
    
    var body: some View {
        
        ZStack{
            //Card border
            RoundedRectangle(cornerRadius: cornerRadius)
                .strokeBorder(SwiftUI.Color.gray, lineWidth: 1)
                .frame(width: cardWidth, height: cardHeight)
                .background(SwiftUI.Color.white)
            HStack(){
                //Image
                AsyncImage(url: URL(string: "\(product.imagem)")){ image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding([.top, .leading, .trailing],20)
                } placeholder: {}
                    .frame(width: imageWidth, height: imageHeight).padding(.bottom,20)
                
                //Product infos
                VStack(alignment: .leading, spacing: 2) {
                    
                    Text("\(product.nome)")
                        .font(.custom("Avenir", size: 18))
                        .fontWeight(.bold)
                    
                    HStack{
                        Button(action: {
                            var newQuantidade = product.quantidade
                            if newQuantidade > 1 {
                                newQuantidade = product.quantidade-1
                            }
                            
//                            else {
//                                selectedProducts.remove(at: Int)
//                            }
                            product = Produtos(id: product.id, nome: product.nome, quantidade: newQuantidade, imagem: product.imagem)
                            
                            }){Image(systemName: "minus")}
                        Text("\(product.quantidade)")
                        Button(action: {
                            product = Produtos(id: product.id, nome: product.nome, quantidade: product.quantidade+1, imagem: product.imagem)
                        }) {Image(systemName: "plus")}
                    }
                    
                }.padding()
                }
            }
            
        }
    }
    
