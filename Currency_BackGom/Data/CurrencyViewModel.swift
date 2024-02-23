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
    
//    let authkey = "HCpmZzWbGKEX9C8ivxyLeQJdnQsfulOW"
    var searchdate = "20240124"
    
        var baseUrl = "https://www.koreaexim.go.kr/site/program/financial/exchangeJSON?authkey=HCpmZzWbGKEX9C8ivxyLeQJdnQsfulOW&searchdate=20240124&data=AP01"
    //    var baseUrl = "https://www.koreaexim.go.kr/site/program/financial/exchangeJSON?authkey=\(authkey)&searchdate=\(searchdate)&data=AP01"

    @Published var responseCurrencyData = [ResponseCurrencyData]()

    init() {
        print(#fileID, #function, #line, "")
        fetchCurrencyData()
    }
    
    func fetchCurrencyData(){
        
//        print(#fileID, #function, #line, "")
//        AF.request(baseUrl)
//            .publishDecodable(type: ResponseCurrencyData.self)
//            .compactMap{ $0.value }
//            .sink(receiveCompletion: { completion in
//                print("데이터스트림 완료")
//            }, receiveValue: {receivedValue in
//                  print("받은 값 : \(receivedValue.count)")
//                self.responseCurrencyData = receivedValue
//            }).store(in: &subscription)
        
        let url = "https://www.koreaexim.go.kr/site/program/financial/exchangeJSON"

        AF.request(url,
                   method: .get,
                   parameters: ["authkey" : "HCpmZzWbGKEX9C8ivxyLeQJdnQsfulOW", "searchdate" : "20240124", "data" : "AP01"],
                   encoding: URLEncoding.default,
                   headers: ["Content-Type":"application/json", "Accept":"application/json"])
            .validate(statusCode: 200..<300)
            .responseJSON { response in
                 print(response)
            /** 서버로부터 받은 데이터 활용 */
            switch response.result {
            case .success(let data): print("성공")
                do {
                    self.responseCurrencyData = try JSONDecoder().decode([ResponseCurrencyData].self, from: response.data!)
                } catch let parsingError {
                    print("Error:", parsingError)
                }
            case .failure(let _error): print("실패")
                /** 그렇지 않은 경우 */
            }
        }
        
    }
    
}
