//
//  Favourites.swift
//  8Ez
//
//  Created by Yogesh Sehgal on 13/06/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct Favourites: View {
    @State var isModal: Bool = false
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Image(systemName: "arrow.left").padding().font(.headline)
                    Spacer()
                    Text("favourites")
                    Spacer()
                    Image(systemName: "ellipsis").padding().font(.headline)
                }
                
            }
            Divider()
            
            ScrollView {
                VStack {
                    Spacer()
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
                }
            }.sheet(isPresented: $isModal, content: {
                Product()
            })

            Spacer()
        }
        .tabItem {
            Image(systemName: "heart.fill")
        }
    }
}

struct Favourites_Previews: PreviewProvider {
    static var previews: some View {
Favourites()
        
    }
}
