//
//  ResponseData.swift
//  Currency_BackGom
//
//  Created by Hoony on 2024/01/27.
//

import Foundation

struct ResponseCurrencyData : Codable, Identifiable, CustomStringConvertible  {
    var id = UUID()
    var result : Int
    var cur_unit : String
    var ttb : String
    var tts : String
    var deal_bas_r : String
    var bkpr : String
    var yy_efee_r : String
    var ten_dd_efee_r : String
    var kftc_bkpr : String
    var kftc_deal_bas_r : String
    var cur_nm : String
    private enum CodingKeys: String, CodingKey {
        case result, cur_unit, ttb, tts, deal_bas_r, bkpr, yy_efee_r, ten_dd_efee_r, kftc_bkpr, kftc_deal_bas_r, cur_nm
    }
    
    static func getDummy() -> Self {
        return ResponseCurrencyData(result: 0, cur_unit: "", ttb: "", tts: "", deal_bas_r: "", bkpr: "", yy_efee_r: "", ten_dd_efee_r: "", kftc_bkpr: "", kftc_deal_bas_r: "", cur_nm: "")
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
