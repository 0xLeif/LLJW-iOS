//
//  Quote.swift
//  LLJW-iOS
//
//  Created by Zach Eriksen on 7/10/20.
//  Copyright © 2020 oneleif. All rights reserved.
//

import Foundation

struct Quote: Codable, Hashable {
    var id: UUID?
    var title: String
    var quote: String
}
