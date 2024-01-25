//
//  JSonParse.swift
//  Pokemon
//
//  Created by Maya Ghamloush on 25/01/2024.
//

import Foundation
extension Data{
    func jsonParsing(letters: String)-> Data? {
        let dataString = String(data: self, encoding: .utf8)
        let parseData = dataString?.replacingOccurrences(of: letters, with: "")
        guard let data = parseData?.data(using: .utf8)else{
            return nil
        }
        return data
    }
}
