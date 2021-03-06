//
//  RecognizedArguments.swift
//  JSONSwiftGenerator
//
//  Created by Brenden Konnagan on 3/1/17.
//  Copyright © 2017 Bren. All rights reserved.
//

import Foundation

enum RecognizedArguments: String {
    case equatable
    case automaticRootName
    case legacy
    case verbose
    
    static func recognized(from flags: [Character]?) -> [RecognizedArguments] {
        guard let existingFlags = flags else { return [] }
        
        var recognized: [RecognizedArguments] = []
        
        if existingFlags.contains("e") {
            recognized.append(.equatable)
        }
        if existingFlags.contains("l") {
            recognized.append(.legacy)
        }
        if existingFlags.contains("n") {
            recognized.append(.automaticRootName)
        }
        if existingFlags.contains("v") {
            recognized.append(.verbose)
        }
        
        return recognized
    }
}
