//
//  MyCartView.swift
//  iMarket
//
//  Created by iMarketGroup on Junho/23.
//

import SwiftUI

struct MyCartView: View {
    
    @State private var showingSheet = false
    
    @StateObject var supermercadomodel = SupermercadoModel()
    
    @State var selProducts : [Produtos] = []
    
    var body: some View {
        VStack{
            Text("Meus Produtos (\(quantidadeSelecionada))")
                .font(.system(size: 36))
            ScrollView{
                VStack{
                    ForEach(selProducts) { Selecionado in
                        ProductBarSelected(product: Selecionado)
                        
                    }
                }
            }
  
            Button("Pesquisar"){
                
                showingSheet = true
            }
            .buttonStyle(GrowingButton())
            
            .sheet(isPresented: $showingSheet) {
              
                FinalView(selProducts: selProducts, selSupermercado: supermercadomodel.chars)
            }
            
            .padding()
        }.onAppear(){
            supermercadomodel.fetch()
            selProducts = selectedProducts
        }
    }
}

struct MyCartView_Previews: PreviewProvider {
    static var previews: some View {
        MyCartView()
    }
}

public struct GrowingButton: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.red)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
