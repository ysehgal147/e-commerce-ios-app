//
//  Login:SignUp.swift
//  8Ez
//
//  Created by Yogesh Sehgal on 13/06/20.
//  Copyright © 2020 Yogesh Sehgal. All rights reserved.
//

import SwiftUI

struct Login: View {
    @State private var text = ""
    @State private var password = ""
    @State var showLoginView: Bool = false
    var body: some View {
        VStack {
            if showLoginView {
                SwiftUIView()
                    .transition(AnyTransition.opacity.animation(.easeInOut(duration: 1.0)))
            }
            else {
            ZStack {
                    RadialGradient(gradient: Gradient(colors: [.orange, .red]), center: .center, startRadius: 100, endRadius: 500)
                VStack {
                Spacer()
                    Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .padding(60)
                    VStack {
                        VStack {
                            HStack {
                                Spacer()
                                Image(systemName: "envelope.fill").padding().foregroundColor(.black)
                                Spacer()
                                VStack {
                                    TextField("Email", text: $text)
                                        .textFieldStyle(DefaultTextFieldStyle())
                                        .padding(2)
                                        .frame(width: 270)
                                }

                            }
                            Divider().frame(width:310)
                        }
                    }.padding()
                    VStack {
                        VStack {
                            HStack {
                                Spacer()
                                Image(systemName: "lock.circle.fill").padding().foregroundColor(.black)
                                Spacer()
                                VStack {
                                    SecureField("Password", text: $password)
                                        .textFieldStyle(DefaultTextFieldStyle())
                                        .padding(2)
                                        .frame(width: 270)
                                }

                            }
                            Divider().frame(width:310)
                        }
                    }.padding()
                    Spacer()
                    VStack{
                    Button(action: {
                        withAnimation{
                        self.showLoginView = true
                        }
                    }) {
                      HStack{
                        Text("Login")
                            .padding(.horizontal).foregroundColor(.white)
                      }
                      .padding()
                        .frame(width:250)
                    }
                    .foregroundColor(Color.white)
                    .background(Color.black)
                    .cornerRadius(15)
                    .padding()
                        Text("Forgot Password?").fontWeight(.light).font(.system(size: 15)).foregroundColor(.black)
                    }.offset(y:-50)
                    Spacer()
                    HStack{
                        Image("facebook")
                            .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .padding()
                        Image("twitter")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .padding()
                    }.offset(y:-60)
                    Text("Not A Customer? Join Now").fontWeight(.light).font(.system(size: 15)).padding().foregroundColor(.black)
                }
                Spacer()
            }.edgesIgnoringSafeArea(.all)
        }
        }
            }
        }

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
