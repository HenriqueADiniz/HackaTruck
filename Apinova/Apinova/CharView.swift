//
//  CharView.swift
//  DesafioAula8
//
//  Created by Student12 on 25/05/23.
//

import SwiftUI

struct CharView: View{
    var p: HaPo
    var body: some View{
        
        ZStack{
            AsyncImage(url:URL(string: "https://seeklogo.com/images/G/game-of-thrones-logo-3A574D3ECB-seeklogo.com.png"), content: {image in image.resizable()}, placeholder: {ProgressView()}).ignoresSafeArea().aspectRatio(contentMode:.fill).blur(radius: 10)
            VStack{
                AsyncImage(url: URL(string: p.imageUrl!), content: {image in image.resizable().scaledToFill()}, placeholder: {ProgressView()}).frame(width: 250,height: 250)
                    .background(Color.gray)
                    .clipShape(Circle())
                    .padding(10)
                Text(p.firstName!)
                    .foregroundColor(.white)
                    .bold()
                Text(p.lastName!)
                    .foregroundColor(.white)
                    .bold()
                Text(p.fullName!)
                    .foregroundColor(.white)
                    .bold()
                Text(p.title!)
                    .foregroundColor(.white)
                    .bold()
                Spacer()
                    
                    
            }.padding(.top,70)
                .ignoresSafeArea()
        }
    }
}

