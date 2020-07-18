//
//  Profile.swift
//  8Ez
//
//  Created by Yogesh Sehgal on 13/06/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct Profile: View {
    @State var isModal: Bool = false
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Image(systemName: "arrow.left").padding().font(.headline)
                    Spacer()
                    Text("alessandra.goven")
                    Spacer()
                    Image(systemName: "ellipsis").padding().font(.headline)
                }
                
            }
            Divider()
            ScrollView {
                VStack {
                    Card()
                    ZStack {
                        HStack {
                            Text("Rating 2.0").padding()
                            Divider().frame(height: 30)
                            Text("44 Items Sold").padding()
                        }
                    }.padding()
                    VStack {
                        HStack{
                            ProfileProduct().onTapGesture {
                                self.isModal = true
                            }
                            ProfileProduct().onTapGesture {
                                self.isModal = true
                            }
                        }
                        HStack{
                            ProfileProduct().onTapGesture {
                                self.isModal = true
                            }
                            ProfileProduct().onTapGesture {
                                self.isModal = true
                            }
                        }
                        HStack{
                            ProfileProduct().onTapGesture {
                                self.isModal = true
                            }
                            ProfileProduct().onTapGesture {
                                self.isModal = true
                            }
                        }
                    }
                }.sheet(isPresented: $isModal, content: {
                    Product()
                })
            }
            Spacer()
        }
        .tabItem {
            Image(systemName: "person.fill")
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
