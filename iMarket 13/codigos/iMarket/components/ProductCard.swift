//
//  CategoryCard.swift
//  iMarket
//
//  Created by iMarketGroup on Junho/23.
//

import SwiftUI

struct ProductCard: View {
    var body: some View {
            ZStack {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .strokeBorder(SwiftUI.Color.gray, lineWidth: 1)
                    .frame(width: cardAndImageWidth, height: cardHeight)
                    .background(SwiftUI.Color.white)
                VStack(alignment: .leading, spacing: 10) {
                    AsyncImage(url: URL(string: "https://media.istockphoto.com/photos/cute-little-baby-boy-relaxing-in-bed-after-bath-smiling-happily-picture-id923852236?k=6&m=923852236&s=612x612&w=0&h=yhDRcow62oft0e40RpIm9BcFXPbEFr2YmqVZrzfMcT0="))
                        .aspectRatio(contentMode: .fill)
                        .frame(width: cardAndImageWidth, height: imageHeight)
                        .clipped()
                    LazyVStack(alignment: .leading, spacing: 2) {
                        Text("No Name")
                            .font(.custom("Avenir", size: 14))
                            .fontWeight(.bold)
                        Text("No Address")
                            .font(.custom("Avenir", size: 12))
                            .foregroundColor(SwiftUI.Color.gray)
                    }
                    .padding(.horizontal,12)
                    .padding(.bottom,11)
                }
                .frame(width: cardAndImageWidth, height: cardHeight)
                .cornerRadius(cornerRadius)
            }
        }
        private let cardAndImageWidth: CGFloat = 170
        private let cardHeight: CGFloat = 174
        private let imageHeight: CGFloat = 116
        private let cornerRadius: CGFloat = 5
}
