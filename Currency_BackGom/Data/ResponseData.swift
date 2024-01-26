//
//  ResponseData.swift
//  Currency_BackGom
//
//  Created by Hoony on 2024/01/27.
//

import Foundation

struct ResponseCurrencyData : Codable, Identifiable, CustomStringConvertible  {
    var id = UUID()
    var cur_unit : String
    var bkpr : String
    var cur_nm : String
    
    private enum CodingKeys: String, CodingKey {
        case cur_unit, bkpr, cur_nm
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
