//
//  LoginView.swift
//  FoodDeliveryApp
//
//  Created by student on 22/01/25.
//

import SwiftUI
import iPhoneNumberField

struct SignInView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.presentationMode) var presentationMode
    @State private var phoneNumber = ""
    @State private var selectedCountry = Country.india
    @State private var showCountryPicker = false
    
    var body: some View {
        NavigationStack{
            
            ZStack{
        
                Image("bottom_bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth,height: .screenHeight)
                    .padding(.bottom,30)
               
                    
               
                    VStack{
//                        ZStack{
                        
                        Image("sign_in_top")
                            .resizable()
                            .scaledToFill()
                            .padding(.bottom,600)
                            
//                            NavigationLink{
//                                    WelcomeView()
//                                }
//                            label:{
//                                    Image("back")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 80,height:20)
//                                        .padding(.bottom,750)
//                                        .padding(.trailing,345)
//                                }
//                    }
                }
                ScrollView{
                    VStack{
                        Text("Get your groceries \nwith nectar")
                            .font(.customfont(.semibold, fontSize: 30))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing,80)
                            .padding(.top,400)

                        HStack(spacing: 1) {
                            Button(action: {
                                showCountryPicker = true
                            }) {
                                HStack(spacing: 4) {
                                    Text(selectedCountry.flag)
                                        .font(.system(size: 22))
                                    Text(selectedCountry.dialCode)
                                        .font(.system(size: 18))
                                        .foregroundColor(.black)
                                }
                                
                                .frame(width: 100)
                                .padding(.top,1)
                                .padding(.leading, 2)
                            }
                            .sheet(isPresented: $showCountryPicker) {
                                NavigationView {
                                    CountryPickerView(selectedCountry: $selectedCountry)
                                        .navigationTitle("Select Country")
                                        .navigationBarTitleDisplayMode(.inline)
                                }
                            }
                            iPhoneNumberField("Enter phone number", text: $phoneNumber)
                                                       .flagHidden(true)
                                                       .flagSelectable(false)
                                                       .formatted(true)
                                                       .font(UIFont(size: 16, weight: .regular))
                                               }
                                               .padding(.top,15)
                                               .padding(.horizontal, 24)
                            
                        }
                         .padding(.top,12)
                         .padding(.leading,-20)

                    
                        NavigationLink{
                            Loginview()
                        }
                    label:
                        {
                            HStack{
                                
                                Text("Continue with SignIn")
                                    .font(.customfont(.semibold, fontSize: 18))
                                    .foregroundColor(.white)
                                    .frame(minWidth: 0, maxWidth: 350, minHeight: 50, maxHeight: 50)
                                
                                
                            }
                            .padding(.leading,-20)
                            .padding(.horizontal)
                            .background(Color(hex: "5383EC"))
                            .cornerRadius(20)
                        }.padding(.top,10)
                       
                        
                        
                        NavigationLink{
                            SignUpView()
                        }
                        label:{
                            HStack{
                                
                                Text("Continue with SignUp")
                                    .font(.customfont(.semibold, fontSize: 18))
                                    .foregroundColor(.white)
                                    .frame(minWidth: 0, maxWidth: 350, minHeight: 50, maxHeight: 50)
                            }
                            .padding(.leading,-20)
                            .padding(.horizontal)
                            .background(Color.primaryApp)
                            .cornerRadius(20)
                        }
                    Rectangle()
                        .frame(width:350,height: 1)
                            .foregroundColor(.gray.opacity(0.3))
                            .padding(.horizontal, 30)
                            .padding(.bottom, 25)
                    
                    Text("or connect with social media")
                        .font(.customfont(.medium, fontSize: 15))
                        .foregroundColor(.black.opacity(0.5))
                        .padding()
                    
                    NavigationLink{
                        EmptyView()
                    }
            
                    label:{
                        HStack(spacing: 60){
                            Image("google")
                                .resizable()
                                .scaledToFill()
                                .frame(width:10, height: 50)
                            Image("facebook")
                                .resizable()
                                .scaledToFill()
                                .frame(width:10, height: 50)
                            Image("apple_logo")
                                .resizable()
                                .scaledToFill()
                                .frame(width:10, height: 50)
                        }
                        
                    }
        
                    }
                    
                }
                .ignoresSafeArea()
                .navigationTitle("")
            }
        }
        
    }


#Preview {
    SignInView()
    
}
