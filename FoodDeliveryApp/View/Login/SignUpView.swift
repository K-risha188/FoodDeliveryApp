//
//  SignUpView.swift
//  FoodDeliveryApp
//
//  Created by student on 24/01/25.
//

import SwiftUI

struct SignUpView: View {
    @StateObject var mainVM = MainViewModel.shared;
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .padding(.bottom,28)
            ScrollView{
                VStack{
                    Image("color_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width:60,height:60)
                        .padding(.top,70)
                    
                    Text("Sign Up")
                        .font(.customfont(.semibold, fontSize: 30))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.top,100)
                        .padding(.leading,25)
                    
                    Text("Enter your credentials to continue")
                        .font(.customfont(.regular, fontSize: 15))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,25)
                        .padding(.top,5)
                        .foregroundColor(.black.opacity(0.5))
                    
                    LineTextField(title: "Username", placholder: "Create a username", txt: $mainVM.txtUsername)
                        .padding(.top,15)
                        .padding(.bottom,15)
                        .padding(.horizontal,25)
                    
                    LineTextField( title: "Email", placholder: "Enter your email address", txt: $mainVM.txtEmail, keyboardType: .emailAddress)
                        .padding(.bottom, 15)
                        .padding(.horizontal,25)
                    LineSecureField(title: "Password", placholder: "Create a password", txt: $mainVM.txtPassword, isShowPassword: $mainVM.isShowPassword)
                        .padding(.bottom, 15)
                        .padding(.horizontal,25)
                    
                    VStack{
                        HStack{
                            
                            Text("By continuing you agree to our")
                                .font(.customfont(.regular, fontSize: 13))
                                .foregroundColor(.black.opacity(0.5))
                            Link(destination: URL(string: "https://www.google.com")!) {
                                Text("Terms of Service")
                                    .font(.customfont(.regular, fontSize: 13))
                            }
                        }
                        
                        HStack{
                            
                            Text("and")
                                .font(.customfont(.regular, fontSize: 13))
                                .foregroundColor(.black.opacity(0.5))
                            Link(destination: URL(string: "https://www.google.com")!) {
                                Text("Privacy Policy")
                                    .font(.customfont(.regular, fontSize: 13))
                            }
                        }
                        .padding(.trailing,175)
                    }
                    .padding(.trailing,60)
                    
                    NavigationLink{
                        EmptyView()
                    }
                label:
                    {
                        VStack{
                            Text("Sign Up")
                                .font(.customfont(.semibold, fontSize: 18))
                                .foregroundColor(.white)
                                .frame(minWidth: 0, maxWidth: 350, minHeight: 60,maxHeight: 60 ,alignment: .center)
                        }
                        .background(Color.primaryApp)
                        .cornerRadius(20)
                    }
                    .padding(.top,20)
                    HStack{
                        Text("Already have an account?")
                            .font(.customfont(.semibold, fontSize:18))
                        NavigationLink{
                            Loginview()
                        }
                        label:{
                            
                            
                            Text("Sign In")
                                .font(.customfont(.semibold, fontSize:18))
                                .foregroundColor(.primaryApp)
                        }
                    }
                }
            }
        }
        .navigationTitle("")
        .ignoresSafeArea()
    }
}

#Preview {
    SignUpView()
}
