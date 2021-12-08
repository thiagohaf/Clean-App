//
//  Model.swift
//  Domain
//
//  Created by Thiago Henrique Alves Ferreira on 07/12/21.
//

import Foundation

public protocol Model: Encodable { }

public extension Model {
    func toData() -> Data? {
        return try? JSONEncoder().encode(self)
    }
}
