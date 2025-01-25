//
//  Loginview.swift
//  FoodDeliveryApp
//
//  Created by student on 23/01/25.
//

import SwiftUI

struct Loginview: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var loginVM = MainViewModel.shared;
    //  @ObservedObject var loginVm = MainViewModel.shared;
    
    var body: some View {
        
        
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth,height: .screenHeight)
                .padding(.bottom,60)
            
            //                    NavigationLink{
            //                        SignInView()
            //                    }
            //                    label:{
            //                    Image("back")
            //                            .resizable()
            //                            .scaledToFit()
            //                            .frame(width: 20,height:20)
            //                            .padding(.bottom,750)
            //                            .padding(.trailing,345)
            //                    }
            VStack{
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60,height:60)
                    .padding(.top,65)
                Spacer()
                
                Text("Loging")
                    .font(.customfont(.semibold,fontSize:30))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom,10)
                    .padding(.leading,25)
                
                Text("Enter your email and password")
                    .font(.customfont(.medium,fontSize: 15))
                    .foregroundColor(.black.opacity(0.5))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom,50)
                    .padding(.leading,25)
                
                LineTextField( title: "Email", placholder: "Enter your email address", txt: $loginVM.txtEmail, keyboardType: .emailAddress)
                    .padding(.bottom, 30)
                    .padding(.horizontal,25)
                
                
                LineSecureField( title: "Password", placholder: "Enter your password", txt: $loginVM.txtPassword, isShowPassword: $loginVM.isShowPassword)
                    .padding(.bottom,3)
                    .padding(.horizontal,25)
                
                Button {
                    
                } label: {
                    Text("Forgot Password?")
                        .font(.customfont(.medium, fontSize: 14))
                        .foregroundColor(.primaryText.opacity(0.75))
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom, 35)
                .padding(.trailing,20)
                
                Button {
                    loginVM.serviceCallLogin()
                } label: {
                    Text("Get Started")
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: 290, minHeight: 60, maxHeight: 60)
                }
                .padding(.horizontal,25)
                .background(Color.primaryApp)
                .cornerRadius(20)
                .padding(.bottom, 20)
                
                HStack {
                    Text("Don't have an account?")
                        .font(.customfont(.semibold, fontSize: 16))
                        .foregroundColor(.primaryText)
                    
                    NavigationLink {
                        SignUpView()
                    } label: {
                        Text("SignUp")
                            .font(.customfont(.semibold, fontSize: 16))
                            .foregroundColor(.primaryApp)
                    }
                }
                .padding(.bottom, 200)
            }
            .alert(isPresented: $loginVM.showError) {
                Alert(title: Text(Globs.AppName), message: Text( loginVM.errorMessage ), dismissButton: .default(Text("Ok")))
            }
            .padding(.bottom,15)
            .navigationTitle("")
            .ignoresSafeArea()
        }
    }
}
    
    
    #Preview {
        Loginview()
    }

