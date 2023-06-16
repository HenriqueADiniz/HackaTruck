//
//  SelectedCategoryView.swift
//  iMarket
//
//  Created by Student08 on 13/06/23.
//

import SwiftUI

struct SelectedCategoryView: View {
    
    var category: Categoria
    
    var body: some View {
        VStack{
            //NavBar
            VStack{
                HStack{
                    Spacer()
                    Text("\(category.nome)").font(.title).textCase(.uppercase).bold()
                    Spacer()
                }
//                //Filters
//                HStack{
//                    Button {
//                    } label: {
//                        Image(systemName: "swift")
//                    }.background(Color.white.opacity(0.3))
//                        .buttonStyle(.bordered)
//                    Button {
//                    } label: {
//                        Text("A-z")
//                    }
//                    .buttonStyle(.bordered)
//                    Button {
//                    } label: {
//                        Image(systemName: "dollarsign")
//
//                    }
//                    .buttonStyle(.bordered)
//                }
            }
            
            ScrollView{
                ForEach(category.produtos){produto in
                    Button(action: {
                        
                        let exists = selectedProducts.contains(where: { $0 == produto})
                        if !exists {
                            selectedProducts.append(produto)
                        }
                        quantidadeSelecionada = selectedProducts.count
                        print(selectedProducts.count)
                        
                    },label: {ProductBar(productName: produto.nome, productImage: produto.imagem).padding(.trailing, 10.0)})
                }
            }
        }
    }
}

struct SelectedCategory_Previews: PreviewProvider {
    static var previews: some View {
        SelectedCategoryView(category: Graos)
    }
}
