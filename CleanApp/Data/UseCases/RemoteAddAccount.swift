//
//  RemoteAddAccount.swift
//  Data
//
//  Created by Thiago Henrique Alves Ferreira on 08/12/21.
//

import Foundation
import Domain

public final class RemoteAddAccount {
    private let url: URL
    private let httpClient: HttpPostClient
    
    public init(url: URL, httpClient: HttpPostClient) {
        self.url = url
        self.httpClient = httpClient
    }
    
    public func add(addAccountModel: AddAccountModel, competion: @escaping (DomainError) -> Void) {
        httpClient.post(to: url, with: addAccountModel.toData()) { error in
            competion(.unexpected)
        }
    }
}
