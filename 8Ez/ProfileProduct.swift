//
//  ProfileProduct.swift
//  8Ez
//
//  Created by Yogesh Sehgal on 13/06/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct ProfileProduct: View {
    
    var body: some View {
        ZStack {
            Image("laptop")
                .resizable()
                .scaledToFill()
                .frame(width: 160, height: 160)
                .mask(RoundedRectangle(cornerRadius: 10))
                .padding(5)
            VStack {
                HStack {
                    Image(systemName: "heart.fill")
                        .padding()
                        .foregroundColor(.white)
                    Spacer()
                }
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 4.0)
                    .frame(width: 100, height: 40)
                        .foregroundColor(.black)
                        .opacity(0.8)
                    Text("SOLD").foregroundColor(.white)
                        .bold()
                }
                .offset(y: -30)
                Spacer()
            }
        }
    }
}




struct ProfileProduct_Previews: PreviewProvider {
    static var previews: some View {
        ProfileProduct()
    }
}
