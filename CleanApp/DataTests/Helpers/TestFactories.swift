//
//  TestFactories.swift
//  DataTests
//
//  Created by Thiago Henrique Alves Ferreira on 12/12/21.
//

import Foundation

func makeInvalidData() -> Data {
    return Data("invalid_data".utf8)
}

func makeUrl() -> URL {
    return URL(string: "https://any-url.com")!
}
