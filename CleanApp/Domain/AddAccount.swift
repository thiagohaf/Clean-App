//
//  AddAccount.swift
//  Domain
//
//  Created by Thiago Henrique Alves Ferreira on 06/12/21.
//

import Foundation

protocol AddAccount {
    func add(addAccountModel: AddAccountModel, completion: @escaping (Result<AccountModel, Error>) -> Void)
}

struct AddAccountModel {
    var name: String
    var email: String
    var password: String
    var passwordConfirmation: String
}

