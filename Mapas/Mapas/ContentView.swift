//
//  ContentView.swift
//  Mapas
//
//  Created by Student12 on 23/05/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var locations=[
        Location(name: "BH", coordinate: CLLocationCoordinate2D(latitude: -19.922449241435, longitude: -43.942736550599406), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Bras%C3%A3o-Belo-Horizonte.svg/800px-Bras%C3%A3o-Belo-Horizonte.svg.png", description: "Bh é nois"),
        Location(name: "SP", coordinate:CLLocationCoordinate2D(latitude: -23.57889608361963,longitude:
                                                                -46.63931605679986), flag: "https://images.tcdn.com.br/img/img_prod/213069/bandeira_oficial_do_estado_de_sao_paulo_128_x_90_2_panos_2432_1_20190719134502.jpg", description: "Sp meu"),
        Location(name: "RJ", coordinate:CLLocationCoordinate2D(latitude: -22.922644832854143,longitude:  -43.197488388359986), flag: "https://http2.mlstatic.com/D_NQ_NP_704312-MLB43238723057_082020-O.jpg", description: "Cade o meu celular")
        
    
 ]
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -19.92, longitude: -43.94), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))

    @State private var showingSheet = false
    @State private var currentlocation :Location = Location (name: "BH", coordinate: CLLocationCoordinate2D(latitude: -19.922449241435, longitude: -43.942736550599406), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Bras%C3%A3o-Belo-Horizonte.svg/800px-Bras%C3%A3o-Belo-Horizonte.svg.png", description: "Bh é nois")
    var body: some View {
        VStack {
            Text("World map")
                .font(.title)
            Text(currentlocation.name)
            Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
                MapAnnotation(coordinate: location.coordinate) {
                    
                        Circle()
                            .stroke(.red, lineWidth: 3)
                            .frame(width: 44, height: 44)
                            .onTapGesture {
                                showingSheet.toggle()
                            }
                            .sheet(isPresented: $showingSheet) {
                                SheetView(location: currentlocation)
                            }
                            
                        
                    }
                }
            ScrollView(.horizontal){
                HStack{
                    ForEach(locations) { location in
                        Spacer()
                        Button(location.name){
                            mapRegion=MKCoordinateRegion(center:location.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
                            currentlocation=location
                        }.buttonStyle(.borderedProminent)
                            .padding(20)
                        Spacer()
                        
                        
                    }
                }
            }

            }
          
            }
        }
        




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct SheetView: View {
    @Environment(\.dismiss) var dismiss
     var location :Location

    var body: some View {
        VStack{
           Text(location.name)
                .foregroundColor(.black)
            AsyncImage(url: URL(string: location.flag)!, scale: 15)
                .frame(width:15, height:15)
                .padding()
            HStack{
                Text(location.description)
                Spacer()
            }
            Spacer()
            Button("Press to dismiss") {
                dismiss()
            }
        }
        .font(.title)
        .padding()
    
    }
}


