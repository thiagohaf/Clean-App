//
//  DataTests.swift
//  DataTests
//
//  Created by Thiago Henrique Alves Ferreira on 06/12/21.
//

import XCTest

class RemoteAddAccount {
    private let url: URL
    private let httpClient: HttpClient
    
    init(url: URL, httpClient: HttpClient) {
        self.url = url
        self.httpClient = httpClient
    }
    
    func add() {
        httpClient.post(url: url)
    }
}

protocol HttpClient {
    func post(url: URL)
}

class RemoteAddAccountTests: XCTestCase {

    func test_() {
        let url = URL(string: "https://any-url.com")!
        let httpClientSpy = HttpClientSpy()
        let sut = RemoteAddAccount(url: url, httpClient: httpClientSpy)
        sut.add()
        XCTAssertEqual(httpClientSpy.url, url)
    }
    
    class HttpClientSpy: HttpClient {
        var url: URL? = nil
        
        func post(url: URL) {
            self.url = url
        }
    }

}
