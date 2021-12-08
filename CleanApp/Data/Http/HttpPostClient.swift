//
//  HttpPostClient.swift
//  Data
//
//  Created by Thiago Henrique Alves Ferreira on 08/12/21.
//

import Foundation
import Domain

public protocol HttpPostClient {
    func post(to url: URL, with data: Data?, completion: @escaping (Result<Data, HttpError>) -> Void)
}
