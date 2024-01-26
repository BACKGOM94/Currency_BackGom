//
//  CurrencyViewModel.swift
//  Currency_BackGom
//
//  Created by Hoony on 2024/01/27.
//

import Foundation
import Combine
import Alamofire

class CurrencyViewModel: ObservableObject {

    var subscription = Set<AnyCancellable>()
    
    let authkey = "HCpmZzWbGKEX9C8ivxyLeQJdnQsfulOW"
    var searchdate = "20240124"
    
        var baseUrl = "https://www.koreaexim.go.kr/site/program/financial/exchangeJSON?authkey=HCpmZzWbGKEX9C8ivxyLeQJdnQsfulOW&searchdate=20240124&data=AP01"
    //    var baseUrl = "https://www.koreaexim.go.kr/site/program/financial/exchangeJSON?authkey=\(authkey)&searchdate=\(searchdate)&data=AP01"

    @Published var responseCurrencyData = [ResponseCurrencyData]()

    init() {
        print(#fileID, #function, #line, "")
        fetchCurrencyData()
    }
    
    func fetchCurrencyData(){
        
        print(#fileID, #function, #line, "")
        AF.request(baseUrl)
            .publishDecodable(type: ResponseCurrencyData.self)
            .compactMap{ $0.value }
            .sink(receiveCompletion: { completion in
                print("데이터스트림 완료")
            }, receiveValue: {receivedValue in
//                  print("받은 값 : \(receivedValue.count)")
//                self.responseCurrencyData = receivedValue
            }).store(in: &subscription)
    }
    
}
