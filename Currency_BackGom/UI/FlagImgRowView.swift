//
//  FlagImgRowView.swift
//  Currency_BackGom
//
//  Created by Hoony on 2024/01/27.
//

import Foundation
import SwiftUI

struct FlagImgRowView: View {
    
    var countryCode: String
    
    var body : some View {
        
        HStack{
            FlagImagView(imageUrl: URL(string:"https://randomuser.me/api/portraits/women/70.jpg")!)
                
            VStack{
                Text(countryCode)
                Text("대한민국 원")
            }
            Spacer()
            Text("$10000")
                .fontWeight(.heavy)
                .frame(width: 90, height: 30)
                .background(.green)
                .cornerRadius(10)
                
            
        }
    }
}

struct FlagImgRowView_Previews: PreviewProvider {
    static var previews: some View {
        let countryCode = "KRW"
        FlagImgRowView(countryCode: countryCode)
    }
}
