//
//  HttpPostClient.swift
//  Data
//
//  Created by Thiago Henrique Alves Ferreira on 08/12/21.
//

import Foundation

public protocol HttpPostClient {
    func post(to url: URL, with data: Data?, completion: @escaping (HttpError) -> Void)
}
