//
//  Mapa.swift
//  Mapas
//
//  Created by Student12 on 23/05/23.
//

import Foundation
import MapKit

struct Location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
    
}
//
