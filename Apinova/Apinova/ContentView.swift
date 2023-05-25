//
//  ContentView.swift
//  DesafioAula8
//
//  Created by Henrique Diniz on 25/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                AsyncImage(url:URL(string: "https://seeklogo.com/images/G/game-of-thrones-logo-3A574D3ECB-seeklogo.com.png"), content:{image in image.resizable().aspectRatio(contentMode:.fill)
                    
                },placeholder:{ProgressView()}).ignoresSafeArea().frame(width:250,height:250)
                ScrollView{
                    ForEach(viewModel.chars){
                        p in NavigationLink(destination: CharView(p: p)){
                            HStack{
                                AsyncImage(url:URL(string: p.imageUrl!), content: {
                                    image in image.resizable().scaledToFill()},placeholder:{ ProgressView()}).frame(width:90,height: 90).background(Color.gray).clipShape(Circle()).padding(10)
                                Text(p.firstName!)
                                Spacer()
                            }
                                }
                            }
                        }
            }.foregroundColor(.white)
                .ignoresSafeArea()
                .background(Color(.black))
                }
        .onAppear(){
            viewModel.fetch()
        }
            }
        }
        
      
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

