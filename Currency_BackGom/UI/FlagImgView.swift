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
    
    var imageUrl : URL
    
    var body : some View {
        
        URLImage(imageUrl,
                 content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
        }).cornerRadius(15)
    }
}

struct FlagImagView_Previews: PreviewProvider {
    static var previews: some View {
        
        let url = URL(string: "https://randomuser.me/api/portraits/women/70.jpg")!
        
        FlagImagView(imageUrl: url)
    }
}
