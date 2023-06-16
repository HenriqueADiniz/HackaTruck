//
//  LocationDB.swift

//  Created by iMarketGroup on Junho/23.
//

import Foundation
import SwiftUI
import MapKit

public struct Location: Identifiable{
    public let id = UUID()
    let nome: String
    let coordenada: CLLocationCoordinate2D
    let flag: String
    let descricao: String
}
