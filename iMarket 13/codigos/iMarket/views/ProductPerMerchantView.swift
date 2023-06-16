//
//  ProductPerMerchantView.swift
//  iMarket
//
//  Created by Student08 on 14/06/23.
//

import SwiftUI

struct ProductPerMerchantView: View {
    
    var body: some View {

        VStack{
            /*
            ZStack{
                    RoundedRectangle(cornerRadius: 5)
                        .strokeBorder(SwiftUI.Color.gray, lineWidth: 1)
                        .frame(width: 400, height: 50)
                        .background(SwiftUI.Color.white)
                    HStack{
                        VStack{
                            Text("SuperMercado").textCase(.uppercase).font(.title)
                            }
                        
                            Spacer()
                        
                        VStack{
                            Text("R$10,00").textCase(.uppercase)
                            }
                        
                    }.padding(.horizontal)
            }
            */
            ScrollView{
                ForEach(selectedProducts){
                    p in
                    ProductBarSelected(product: p)
                }
                    }
            
            
                }
            }
            
        }



struct ProductPerMerchantView_Previews: PreviewProvider {
    static var previews: some View {
        ProductPerMerchantView()
    }
}
