//
//  LocationView.swift
//  Aula05-maps
//
//  Created by Student on 23/05/23.
//

import SwiftUI
import MapKit
import WrappingHStack

struct LocationView: View {
    
    @State private var showingSheet = false

    @State private var localAtual = Location(nome: "PUC", coordenada: CLLocationCoordinate2D(latitude: -19.924668, longitude: -43.992629), flag: "", descricao: "")
    
    @State private var regiao = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -19.924668, longitude: -43.992629),
        span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
        
    @StateObject var supermercadomodel = SupermercadoModel()
    
    var body: some View {

        ZStack{
            VStack{
                
                Map(coordinateRegion: $regiao, annotationItems: supermercadomodel.locais){
                    local in MapAnnotation(coordinate: local.coordenada){
                        Button(" ") {
                            localAtual = local
                            showingSheet.toggle()
                        }
                        .frame(width: 20.0)
                        .background(Color.pink)
                        .clipShape(Circle())
                        .sheet(isPresented: $showingSheet) {
                            ZStack{
                                
                                VStack{
                                    Text("\(localAtual.nome)")
                                        .font(.largeTitle)
                                    AsyncImage(url: URL(string: localAtual.flag)) {
                                        image in
                                        image
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 300.0)
                                    } placeholder:{}
                                        
                                    Text("\(localAtual.descricao)")
                                    
                                    


                                    .padding(.top, 50.0)
                                    .padding(.leading, 8)
                                }
                            }
                        }
                    }
                }
                .edgesIgnoringSafeArea(.top)
            }
            VStack{
                
                Spacer()
                
                ScrollView(.horizontal){
                    HStack{
                        Spacer()
                        ForEach(supermercadomodel.locais) { local in
                            Button(local.nome) {
                                localAtual = local
                                
                                regiao = MKCoordinateRegion(
                                    center: localAtual.coordenada,
                                    span: MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003))
                            }
                            .buttonStyle(GrowingButton())

                        }
                    }
                }
                .padding(.bottom)
            }
            .onAppear{
                supermercadomodel.fetch()
            }
        }
    }
    
}

