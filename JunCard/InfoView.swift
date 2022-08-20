//
//  InfoView.swift
//  JunCard
//
//  Created by JunHyuk Lim on 20/8/2022.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName : String
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height:50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.yellow)
                Text(text)
                    .foregroundColor(Color.black)
                    
            })
            .padding(5)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
