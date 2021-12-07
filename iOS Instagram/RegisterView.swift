//
//  RegisterView.swift
//  iOS Instagram
//
//  Created by Phạm Lê Tuấn Nam on 03/12/2021.
//

import SwiftUI

struct RegisterView: View {
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
                            ZStack(alignment: .center) {
                                Circle()
                                    .strokeBorder(Color.white, lineWidth: 3)
                                VStack {
                                    Image(systemName: "plus")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 35, height: 35, alignment: .center)
                                        .padding(3)
                                    Text("Photo")
                                        .fontWeight(.bold)
                                        .font(.system(size: 19))
                                }
                            }
                            .frame(width: 130, height: 130, alignment: .center)
                            Spacer()
                                .frame(width: UIScreen.main.bounds.width, height: 40, alignment: .top)
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
                            ZStack {
                                Color(Color.RGBColorSpace.displayP3, white: 1, opacity: 0.15)
                                HStack {
                                    Spacer()
                                        .frame(width: 10, height: 1, alignment: .leading)
                                    SecureField("Fullname", text: $password)
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
                                    SecureField("Username", text: $password)
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width - 70, height: 50, alignment: .center)
                            Spacer()
                                .frame(width: UIScreen.main.bounds.width, height: 20, alignment: .top)
                            Button("Sign Up") {
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
                            Spacer()
                            HStack(alignment: .center, spacing: 5) {
                                Text("Already have an account?")
                                    .foregroundColor(.white)
                                NavigationLink(destination: LoginView()) {
                                    Text("Sign In")
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .navigationBarTitle("")
            .navigationBarHidden(true)
    }
}

