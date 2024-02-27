//
//  FlagImgView.swift
//  Currency_BackGom
//
//  Created by Hoony on 2024/01/27.
//

import Foundation
import SwiftUI
import URLImage


struct FlagImagView: View {
    
    var imageName : String
    
    var body : some View {
        
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 60, height: 60)
            .cornerRadius(15)

    }
}

struct FlagImagView_Previews: PreviewProvider {
    static var previews: some View {

        var imageName = "CAD"
        
        FlagImagView(imageName: imageName)
    }
}
