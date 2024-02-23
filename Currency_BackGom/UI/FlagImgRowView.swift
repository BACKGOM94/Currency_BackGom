//
//  FlagImgRowView.swift
//  Currency_BackGom
//
//  Created by Hoony on 2024/01/27.
//

import Foundation
import SwiftUI

struct FlagImgRowView: View {
    
    
    var responseData : ResponseCurrencyData
    
    init(_ responseData: ResponseCurrencyData) {
        self.responseData = responseData
    }
    var body : some View {
        
        HStack{
            FlagImagView(imageUrl: URL(string:"https://randomuser.me/api/portraits/women/70.jpg")!)
                
            VStack{
                Text(responseData.cur_unit)
                Text(responseData.cur_nm)
            }
            Spacer()
            Text(responseData.ttb)
                .fontWeight(.heavy)
                .frame(width: 90, height: 30)
                .background(.green)
                .cornerRadius(10)
                
            
        }
    }
}

//"result": 1,
//"cur_unit": "AED",
//"ttb": "288.78",
//"tts": "294.61",
//"deal_bas_r": "291.7",
//"bkpr": "291",
//"yy_efee_r": "0",
//"ten_dd_efee_r": "0",
//"kftc_bkpr": "291",
//"kftc_deal_bas_r": "291.7",
//"cur_nm": "아랍에미리트 디르함"


struct FlagImgRowView_Previews: PreviewProvider {
    static var previews: some View {
        FlagImgRowView(ResponseCurrencyData.getDummy())
    }
}
