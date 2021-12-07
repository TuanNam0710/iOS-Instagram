//
//  LoginView.swift
//  iOS Instagram
//
//  Created by Phạm Lê Tuấn Nam on 03/12/2021.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var isNavigationBarHidden = true
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                ZStack(alignment: .top, content: {
                    LinearGradient(colors: [.purple, .blue], startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea()
                    VStack {
                        Group {
                            Spacer()
                                .frame(width: UIScreen.main.bounds.width, height: 35 + geometry.safeAreaInsets.top, alignment: .top)
                            HStack {
                                Image("Instagram_logo_white")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.leading, 70)
                                    .padding(.trailing, 70)
                            }
                            Spacer()
                                .frame(width: UIScreen.main.bounds.width, height: 30, alignment: .top)
                        }
                        Group {
                            ZStack {
                                Color(Color.RGBColorSpace.displayP3, white: 1, opacity: 0.15)
                                HStack {
                                    Spacer()
                                        .frame(width: 10, height: 1, alignment: .leading)
                                    TextField("Email", text: $email)
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width - 70, height: 50, alignment: .center)
                            Spacer()
                                .frame(width: UIScreen.main.bounds.width, height: 20, alignment: .top)
                            ZStack {
                                Color(Color.RGBColorSpace.displayP3, white: 1, opacity: 0.15)
                                HStack {
                                    Spacer()
                                        .frame(width: 10, height: 1, alignment: .leading)
                                    SecureField("Password", text: $password)
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width - 70, height: 50, alignment: .center)
                            Spacer()
                                .frame(width: UIScreen.main.bounds.width, height: 20, alignment: .top)
                            Button("Log In") {
                                print("Hello, your email is \(email) and password is \(password)")
                            }
                            .frame(width: UIScreen.main.bounds.width - 70, height: 50, alignment: .center)
                            .background(Color(Color.RGBColorSpace.displayP3, red: 114/255, green: 96/255, blue: 233/255, opacity: 1))
                            .foregroundColor(.white)
                            .font(.headline)
                            .cornerRadius(5)
                            Spacer()
                                .frame(width: UIScreen.main.bounds.width, height: 25, alignment: .top)
                        }
                        Group {
                            HStack(alignment: .center, spacing: 5) {
                                Text("Forgot your password?")
                                    .foregroundColor(.white)
                                
                                Button("Get help signing in.") {
                                    print("Hello")
                                }
                                .foregroundColor(.white)
                                .minimumScaleFactor(0.01)
                                .lineLimit(1)
                                .font(Font.headline.weight(.bold))
                            }
                            .padding(.leading, 50)
                            .padding(.trailing, 50)
                            .font(.system(size:13))
                            Spacer()
                            HStack(alignment: .center, spacing: 5) {
                                Text("Don't have an account?")
                                    .foregroundColor(.white)
                                NavigationLink(destination: RegisterView()) {
                                    Text("Sign Up")
                                        .foregroundColor(.white)
                                        .font(.headline)
                                }
                            }
                            Spacer()
                                .frame(width: UIScreen.main.bounds.width, height: 34 + geometry.safeAreaInsets.bottom, alignment: .top)
                        }
                    }
                    .preferredColorScheme(.dark)
                })
                    .navigationBarTitle("")
                    .navigationBarHidden(isNavigationBarHidden)
                    .navigationBarBackButtonHidden(true)
                    .ignoresSafeArea()
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .navigationBarTitle("")
            .navigationBarHidden(true)
    }
}
