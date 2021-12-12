//
//  AccountModelFactory.swift
//  DataTests
//
//  Created by Thiago Henrique Alves Ferreira on 12/12/21.
//

import Foundation
import Domain

func makeAccountModel() -> AccountModel {
    return AccountModel(id: "any_id",
                        name: "any_name",
                        email: "any_email@mail.com",
                        password: "any_password")
}
