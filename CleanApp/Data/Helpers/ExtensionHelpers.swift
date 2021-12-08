//
//  ExtensionHelpers.swift
//  Data
//
//  Created by Thiago Henrique Alves Ferreira on 08/12/21.
//

import Foundation

public extension Data {
    func toModel<T: Decodable>() -> T? {
        return try? JSONDecoder().decode(T.self, from: self)
    }
}
