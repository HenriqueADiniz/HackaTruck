//
//  ContentView.swift
//  iMarket
//
//  Created by iMarketGroup on Junho/23.
//

import SwiftUI
import WrappingHStack

struct CategorySearchView: View {
    
    var body: some View {
        NavigationStack{
            // NavBar
            VStack{
                Spacer()
                //Search bar
                ZStack{
                    HStack{
                        Text("iMarket")
                            .foregroundColor(.red)
                        //                        .textCase(.uppercase)
                            .font(.system(size: 36))
                        
                    }
//                    .background(Color("laranja"))
                }
                
                Spacer()
                ScrollView{
                    WrappingHStack(categorias) { ctg in
                        NavigationLink(destination: SelectedCategoryView(category: ctg)){
                            CategoryCard(category: ctg)
                        }
                    }
                }
                .padding(.top, 80.0)
                .padding(.leading, 8.0)
                Spacer()
            }
            
            // Category list
        
            
        }
        
    }
}

struct CategorySearchView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySearchView()
    }
}
