//
//  QuoteListView.swift
//  LLJW-iOS
//
//  Created by Zach Eriksen on 7/10/20.
//  Copyright © 2020 oneleif. All rights reserved.
//

import SwiftUI

struct QuoteListView: View {
    var quote: Quote
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Group {
                Text(quote.title)
                    .font(.title)
                Text("\"\(quote.quote)\"")
                    .font(.body)
            }
            .foregroundColor(.white)
            .shadow(color: .black, radius: 1, x: 1, y: 1)
        }
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
        .background(
            LinearGradient(gradient: Gradient(colors: [.purple, .pink]),
                           startPoint: .topTrailing,
                           endPoint: .bottomLeading)
                .blur(radius: 4)
        )
            .cornerRadius(8)
            .padding(8)
            .shadow(color: .purple, radius: 8, x: 1, y: 1)
    }
}

struct QuoteListView_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            
            QuoteListView(quote: Quote(id: nil,
                                       title: "Some Quote",
                                       quote: String(repeating: "Ipsum ", count: 25)))
            
            QuoteListView(quote: Quote(id: nil,
                                       title: "Some Quote",
                                       quote: String(repeating: "Ipsum ", count: 25)))
                .preferredColorScheme(.dark)
        }
    }
}
