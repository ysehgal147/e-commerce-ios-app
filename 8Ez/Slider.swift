//
//  Slider.swift
//  8Ez
//
//  Created by Yogesh Sehgal on 13/06/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct Slider: View {
    @State var isModal: Bool = false
    var body: some View {
        VStack{
            Text("Recents").bold().offset(x:-130)
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    Spacer()
                    ForEach(0..<10) {_ in
                        ZStack {
                            Image("laptop")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)
                            .mask(RoundedRectangle(cornerRadius: 12.0))
                                .shadow(radius: 2)
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
                                    Text("₹2,00,000").foregroundColor(.white)
                                        .bold()
                                }
                                .offset(y: -30)
                                Spacer()
                            }
                        }.onTapGesture {
                            self.isModal = true
                        }
                    }
                }
                Spacer()
            }
        }.sheet(isPresented: $isModal, content: {
            Product()
        })
    }
}


struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        Slider()
    }
}
