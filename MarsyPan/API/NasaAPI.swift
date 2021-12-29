//
//  NasaAPI.swift
//  MarsyPan
//
//  Created by Ruben Hansen-Rojas on 12/29/21.
//

import Foundation

// API documentation can be found here: https://api.nasa.gov/index.html
// Specifically for the Mars Rover Photos API

struct NasaAPI {
    
    static let instance = NasaAPI(marsRoverPhotosKey: "2iiJmWYoTaFf8feVebfjkAzExboiSx5bTRuQMwgi")
    
    let marsRoverPhotosKey: String
}
