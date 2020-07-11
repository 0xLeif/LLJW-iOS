//
//  ContentView.swift
//  LLJW-iOS
//
//  Created by Zach Eriksen on 7/10/20.
//  Copyright © 2020 oneleif. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var api = APIService()
    
    var body: some View {
        List(api.quotes, id: \.self) { quote in
            QuoteListView(quote: quote)
        }
        .onAppear {
            self.api.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
