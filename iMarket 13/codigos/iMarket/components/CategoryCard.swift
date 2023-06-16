//
//  CategoryCard.swift
//  iMarket
//
//  Created by iMarketGroup on Junho/23.
//

import SwiftUI

struct CategoryCard: View {
    
    var category : Categoria
    
    var body: some View {
ZStack {
    
        RoundedRectangle(cornerRadius: cornerRadius)
            .strokeBorder(SwiftUI.Color.gray, lineWidth: 1)
            .frame(width: cardAndImageWidth, height: cardHeight)
            .background(Color.white)
    
        VStack(alignment: .leading, spacing: 10) {
            //Image
            AsyncImage(url: URL(string: "\(category.imagem)")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding([.top, .leading, .trailing],20)
            } placeholder: {}
                .frame(width: imageWidth, height: imageHeight)
            
            Spacer()
            
            LazyVStack(alignment: .leading, spacing: 2) {
                HStack{
                    
                    Spacer()
                    
                    Text("\(category.nome)")
                        .font(.custom("Avenir", size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                    
                    Spacer()
                    
                }.padding(.top, -16)
            }
            .padding(.horizontal,12)
            .padding(.bottom,10)
            
        }
        .frame(width: cardAndImageWidth, height: cardHeight)
        .cornerRadius(cornerRadius)
    }.cornerRadius(cornerRadius)
}

    public let cardAndImageWidth: CGFloat = 175
    public let imageWidth: CGFloat = 170
    public let cardHeight: CGFloat = 165
    public let imageHeight: CGFloat = 100
    public let cornerRadius: CGFloat = 5
}


struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCard(category: Categoria(nome: "Teste", imagem: "https://lh3.googleusercontent.com/p/AF1QipPGJHc8ucRAKLNdH07s56Z4SJ0-hmPZCyHWFEIe=w1080-h608-p-no-v0", produtos: []))
    }
}


/*
 AsyncImage(url: URL(string: "\(category.imagem)"))
     .aspectRatio(contentMode: .fill)
     .frame(width: imageWidth, height: imageHeight)
     .clipped()
 */
