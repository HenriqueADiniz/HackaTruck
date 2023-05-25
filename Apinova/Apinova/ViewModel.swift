//
//  ViewModel.swift
//  DesafioAula8
//
//  Created by Student12 on 25/05/23.
//

import Foundation


struct Wand: Codable{
    
    let wood: String?
    let core: String?
    let length: Double?
    
}

struct HaPo: Codable,Identifiable{
    let id: Int
    let firstName: String?
    let lastName: String?
    let fullName: String?
    let title: String?
    let family: String?
    let image: String?
    let imageUrl: String?

}

class ViewModel : ObservableObject{
    @Published var chars: [HaPo] = []
    
    func fetch(){
        guard let url = URL(string: "https://thronesapi.com/api/v2/Characters")
        else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){[weak self] data,_,error in
            guard let data = data,error == nil else{
                return
            }
            do {
                let parsed = try JSONDecoder().decode([HaPo].self, from: data)
                DispatchQueue.main.async{
                    self?.chars = parsed
                }
            }catch{
                    print(error)
                }
                
                
            }
            task.resume()
        }
        
    }


