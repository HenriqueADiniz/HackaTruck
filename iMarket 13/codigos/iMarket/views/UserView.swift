//
//  UserView.swift
//  iMarket
//
//  Created by iMarketGroup on Junho/23.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        ZStack{
            VStack{
                Image(systemName: "person.circle")
                    .font(.custom("person.circle", size: 250))
                    .foregroundColor(.gray)
                
                Spacer()
                
                HStack{
                    Text("Nome: ")
                        .font(.title2)
                        .bold()
                        .padding(.leading, 30.0)
                    Text("José Geraldo da Silva")
                        .font(.title2)
                    Spacer()
                }
                
                Spacer()
                
                HStack{
                    Text("Telefone: ")
                        .font(.title2)
                        .bold()
                        .padding(.leading, 30.0)
                    Text("31 - 99874-9432")
                        .font(.title2)
                    Spacer()
                }
                Spacer()
                
                HStack{
                    Text("Endereço: ")
                        .font(.title2)
                        .bold()
                        .padding(.leading, 30.0)
                    Text("Rua das Flores, 75")
                        .font(.title2)
                    Spacer()
                }
                Spacer()
                
                VStack{
                    Button("Editar") {
                        //action
                    }
                    .buttonStyle(GrowingButton())
                }
                .padding(.bottom)
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
