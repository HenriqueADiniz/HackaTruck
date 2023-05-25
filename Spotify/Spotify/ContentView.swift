//
//  ContentView.swift
//  Spotify
//
//  Created by Student12 on 22/05/23.
//

import SwiftUI

struct ContentView: View {
    var spotify = [
        music( id: 1, nome: "NUMB", artista: "Linkin Park", capa: "https://http2.mlstatic.com/D_NQ_NP_850986-MLB25821672036_072017-O.jpg"),
        music( id: 2, nome: "teste", artista: "teste", capa: "https://http2.mlstatic.com/D_NQ_NP_850986-MLB25821672036_072017-O.jpg"),
        music( id: 3, nome: "teste", artista: "teste", capa: "https://upload.wikimedia.org/wikipedia/pt/7/7f/Linkin_Park_Reanimation.jpg"),
        music( id: 4, nome: "teste", artista: "teste", capa: "https://upload.wikimedia.org/wikipedia/pt/5/5d/Linkin_Park_Road_to_Revolution_Live_at_Milton_Keynes.jpg"),
        music( id: 5, nome: "teste", artista: "teste", capa: "https://i.discogs.com/X5nLlP-DBnsAlDG1bNkzDZ06Ppq4yMUyTtxjt9ff4vc/rs:fit/g:sm/q:90/h:500/w:590/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE4Mzkw/MjQtMTI0Njk0NTk5/My5qcGVn.jpeg")
    ]
    var sugeridos = [
        music( id: 1, nome: "NUMB", artista: "Linkin Park", capa: "https://http2.mlstatic.com/D_NQ_NP_850986-MLB25821672036_072017-O.jpg"),
        music( id: 2, nome: "teste", artista: "teste", capa: "https://http2.mlstatic.com/D_NQ_NP_850986-MLB25821672036_072017-O.jpg"),
        music( id: 3, nome: "teste", artista: "teste", capa: "https://upload.wikimedia.org/wikipedia/pt/7/7f/Linkin_Park_Reanimation.jpg")
        ]
    var body: some View {
        NavigationStack{
        ScrollView{
        VStack {
            Spacer()
                Image("bg")
                .resizable()
                .frame(width: 225, height: 225)
            
                HStack{
                    Text("HackaFM")
                        .font(.title)
                        .foregroundColor(.white)
                    Spacer()
                    
                }
                HStack{

                    Image("bg")
                        .resizable()
                        .frame(width: 25, height: 25)
                    Text("HackaSong")
                        .foregroundColor(.white)
                    Spacer()
                }
                
            
                ForEach(spotify) { Spotify in
                    NavigationLink( destination: Tela2(musica: Spotify)){
                        HStack{
                            AsyncImage(url: URL(string: Spotify.capa)!, scale: 10)
                                .frame(width: 50, height: 50)
                            
                            
                            VStack{
                                NavigationLink(Spotify.nome){
                                    Tela2(musica:Spotify)
                                }
                                .foregroundColor(.white)
                                
                                NavigationLink(Spotify.artista){(Tela2(musica:Spotify))}
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            Text("...")
                                .foregroundColor(.white)
                                .font(.title)
                            
                        }
                    }
                    .padding()
                }//end foreach
            
            VStack{
                HStack{
                    
                    Text("Sugeridos")
                        .foregroundColor(.white)
                        .font(.title)
                    Spacer()
                }
                ScrollView(.horizontal){
                    HStack{
                        ForEach(spotify) { Spotify in
                            
                            
                            VStack{
                                AsyncImage(url: URL(string: Spotify.capa)!, scale: 3)
                                    .frame(width: 250, height:250)
                                Text(Spotify.artista)
                                    .foregroundColor(.white)
                            }
                            Spacer()
                            
                        }
                                
                    }
                    }
                    
            //endHstack
                
                
            
            }//endVStack
            }//end vstack
        }//end scrollview
        .background(LinearGradient(gradient: Gradient(colors:[.indigo,.black]),startPoint: .top,endPoint: .bottom))
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
