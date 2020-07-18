//
//  1SwiftUIView.swift
//  8Ez
//
//  Created by Yogesh Sehgal on 13/06/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct Card: View {
    var body: some View {
        Group {
            ZStack {
                HStack{
                        VStack {
                            Image("face")
                                .resizable()
                                .frame(width: 200, height: 200)
                                .mask(Circle())
                                .scaledToFit().padding()
                            VStack {
                                Text("Alessandra Goven").font(.system(size: 40))
                                    .lineLimit(3)
                                Text("Simply Simplified").padding()
                            }
                            VStack{
                            HStack {
                                Spacer()
                                Image(systemName: "mappin.and.ellipse").font(.system(size: 20)).padding()
                                Text("New York City").font(.system(size: 20)).padding()
                                Spacer()
                            }.padding()
                            HStack{
                                Image(systemName: "message.circle.fill").padding().font(.system(size: 40)).foregroundColor(.red)
                                Image(systemName: "phone.circle.fill").padding().font(.system(size: 40)).foregroundColor(.red)
                                Image(systemName: "envelope.circle.fill").padding().font(.system(size: 40)).foregroundColor(.red)
                            }
                            }
                        }
                        Spacer()
                    }
                }
            }
        }
    func makeGradient() -> some View {
        LinearGradient(
            gradient: .init(colors: [.red, .orange]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
    }


struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
