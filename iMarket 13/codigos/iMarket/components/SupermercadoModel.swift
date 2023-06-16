//
//  ViewModel.swift
//  HarryPotter
//
//  Created by Gabriel Vargas on 25/05/23.
//

import Foundation
import CoreLocation

class SupermercadoModel: ObservableObject {
    
    @Published var chars: [Supermercado] = []
    @Published var locais: [Location] = []
    @Published var cotacao: [SupermercadoCotacao] = []
    
    func preco(_ arrPSelecio : [Produtos], _ arrSuper : [Supermercado]){
        var arrCotacao : [SupermercadoCotacao] = []
        var arrAuxProduto : [Produto] = []
        var precoTotal : Double = 0.0
       


            for s in arrSuper{
                for p in s.produtos!{
                    
                    for ps in arrPSelecio{
                    if(s.id == 1){
                        if(ps.id == p.id){
                            arrAuxProduto.append(p)
                            precoTotal = precoTotal + (p.preco * Double(ps.quantidade))
                        }
                        
                    }else if(s.id == 2){
                        if(ps.id == p.id){
                            arrAuxProduto.append(p)
                            precoTotal = precoTotal + (p.preco *  Double(ps.quantidade))
                        }
                       
                    }else if(s.id == 3){
                        if(ps.id == p.id){
                            arrAuxProduto.append(p)
                            precoTotal = precoTotal + (p.preco *  Double(ps.quantidade))
                        }
                    }else if(s.id == 4){
                        if(ps.id == p.id){
                            arrAuxProduto.append(p)
                            precoTotal = precoTotal + (p.preco *  Double(ps.quantidade))
                        }
                    }
                    
                    
                }
                    
                
            }
                arrCotacao.append(SupermercadoCotacao(nome:s.nome, logo:s.logo,produtos: arrAuxProduto, total: precoTotal))
                arrAuxProduto.removeAll()
                precoTotal = 0.0
                
 
        }
        print(arrCotacao)
        cotacao = arrCotacao
    }
    
    
    func fetch() {
        
        guard let url = URL(string: "http://192.168.128.240:1880/getAll_imarket")
        else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
            guard let data = data, error == nil
            else {
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Supermercado].self, from: data)
                DispatchQueue.main.async {
                    self?.chars = parsed
                    
                    self?.locais.removeAll()
                    for s in parsed {
                        self?.locais.append(
                            Location(
                                nome: s.nome!,
                                coordenada: CLLocationCoordinate2D(latitude: s.latitude!, longitude: s.longitude!),
                                flag: s.logo!,
                                descricao: s.endereco!)
                             )
                        
                    }
                    
                    
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
