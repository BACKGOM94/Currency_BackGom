//
//  ContentView.swift
//  Currency_BackGom
//
//  Created by Hoony on 2024/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var currencyViewModel = CurrencyViewModel()
    
    var body: some View {
        List(currencyViewModel.responseCurrencyData) { currencyData in
            FlagImgRowView(currencyData)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
