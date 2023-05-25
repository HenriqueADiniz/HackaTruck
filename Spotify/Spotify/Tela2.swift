//
//  Tela2.swift
//  Spotify
//
//  Created by Student12 on 22/05/23.
//

import SwiftUI

struct Tela2: View {
    var musica :music
    
    var body: some View {
                VStack{
                    Spacer()
                    AsyncImage(url: URL(string: musica.capa)!, scale: 2)
                        .frame(width: 250, height:250)

            Spacer()
                    Text(musica.nome)
                .font(.title)
                .foregroundColor(.white)
                
                    Text(musica.artista)
                        .foregroundColor(.white)
            Spacer()
            HStack{
                Image(systemName: "shuffle")
                    .foregroundColor(.white)
                    .font(.title)
                Spacer()
                Image(systemName: "backward.end.fill")
                    .foregroundColor(.white)
                    .font(.title)
                Spacer()
                Image(systemName: "play.fill")
                    .foregroundColor(.white)
                    .font(.system(size:60))
                Spacer()
                Image(systemName: "forward.end.fill")
                    .foregroundColor(.white)
                    .font(.title)
                Spacer()
                Image(systemName: "repeat")
                    .foregroundColor(.white)
                    .font(.title)
                
            }
            Spacer()
                    
        }
                .background(LinearGradient(gradient: Gradient(colors:[.indigo,.black]),startPoint: .top,endPoint: .bottom))
        
    }
    
    
    
}

struct Tela2_Previews: PreviewProvider {
    static var previews: some View {
        //Tela2()
        Text("")
    }
}
