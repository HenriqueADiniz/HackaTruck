//
//  MainView.swift
//  projeto
//
//  Created by Student08 on 12/06/23.
//

import SwiftUI

struct MainView: View {
    
    init(){
        UITabBar.appearance().unselectedItemTintColor = .gray
        UITabBar.appearance().backgroundColor = UIColor(named: "laranja")
    }
    
//    var categoria: Categoria
    var body: some View {
        TabView {
            CategorySearchView()
                .tabItem {
                    Label("Pesquisa",  systemImage:"magnifyingglass")
                }
//                .background(Color("laranja"))
            
            LocationView()
                .tabItem{
                    Label("Localização", systemImage:"map")
                }
            
            MyCartView()
                .tabItem{
                    Label("Meus Produtos", systemImage: "cart.fill")
                }
            
            UserView()
                .tabItem{
                    Label("Perfil", systemImage: "person.fill")
                }
        }
        .accentColor(.red)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
