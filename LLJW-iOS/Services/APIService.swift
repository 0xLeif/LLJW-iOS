//
//  APIService.swift
//  LLJW-iOS
//
//  Created by Zach Eriksen on 7/10/20.
//  Copyright © 2020 oneleif. All rights reserved.
//

import Foundation
import Combine

class APIService: ObservableObject {
    private var bag = [AnyCancellable]()
    
    @Published var quotes: [Quote] = [] {
        willSet {
            objectWillChange.send()
        }
    }
    
    func fetch() {
        URLSession.shared
            .dataTaskPublisher(for: URL(string: "http://127.0.0.1:8080/quotes")!)
            .sink(receiveCompletion: { (event) in
                print(event)
            }) { (data: Data, response: URLResponse) in
                DispatchQueue.main.async {
                    self.quotes = (try? JSONDecoder().decode([Quote].self, from: data)) ?? []
                    
                }
        }
        .store(in: &self.bag)
    }
}
