//
//  Temple.swift
//  TempleId
//
//  Created by Novianto Hermawan on 27/07/21.
//

import Foundation
import SwiftUI

struct Temple: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var city: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
}
