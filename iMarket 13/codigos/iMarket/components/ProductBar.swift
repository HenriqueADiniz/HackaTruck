//
//  ProductBar.swift
//  iMarket
//
//  Created by iMarketGroup on Junho/23.
//

import SwiftUI

struct ProductBar: View {
    
    var productName: String
    var productImage: String
    
    var body: some View {
        ZStack{
            //Card border
            RoundedRectangle(cornerRadius: cornerRadius)
                .strokeBorder(SwiftUI.Color.gray, lineWidth: 1)
                .frame(width: cardWidth, height: cardHeight)
                .background(SwiftUI.Color.white)
            HStack(){
                //Image
                AsyncImage(url: URL(string: "\(productImage)")){ image in
                    image
                        .resizable()
                        .frame(width: 120.0, height: 120.0)
                        .aspectRatio(contentMode: .fill)
                        .padding([.top, .leading, .trailing],20)
                } placeholder: {}
                    .frame(width: imageWidth, height: imageHeight)
                                
                //Product infos
                VStack(alignment: .leading, spacing: 2) {
                    Text("\(productName)")
                        .font(.custom("Avenir", size: 20))
                        .fontWeight(.bold)
                    
                }
                .padding()
            }.cornerRadius(cornerRadius).padding(.leading,-43)
        }
    }
    private let cardWidth: CGFloat = 350
    private let cardHeight: CGFloat = 165
    private let imageWidth: CGFloat = 170
    private let imageHeight: CGFloat = 163
    private let cornerRadius: CGFloat = 5
}



/*
 AsyncImage(url: URL(string: "\(productImage)"))
     .aspectRatio(contentMode: .fill)
     .frame(width: imageWidth, height: imageHeight)
     .clipped().padding()
 */
