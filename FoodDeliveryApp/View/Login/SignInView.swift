//
//  LoginView.swift
//  FoodDeliveryApp
//
//  Created by student on 22/01/25.
//

import SwiftUI

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
                VStack{
                    Image("sign_in_top")
                        .resizable()
                        .scaledToFill()
                        .padding(.bottom,500)
                    
                }
                ScrollView{
                    VStack{
                        Text("Get your groceries \n with nectar")
                            .font(.customfont(.semibold, fontSize: 30))
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing,80)
                            .padding(.top,100)
                        HStack(spacing: 12) {
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
                                .padding(.leading, 20)
                            }
                            .sheet(isPresented: $showCountryPicker) {
                                NavigationView {
                                    CountryPickerView(selectedCountry: $selectedCountry)
                                        .navigationTitle("Select Country")
                                        .navigationBarTitleDisplayMode(.inline)
                                }
                            }
                        Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.gray.opacity(0.3))
                                .padding(.horizontal, 30)
                                .padding(.bottom, 25)

                        }
                
                            Text("or connect with social media")
                                .font(.customfont(.medium, fontSize: 15))
                                .foregroundColor(.black.opacity(0.5))
                                .padding(.top,350)
                                .padding()
                            NavigationLink{
                                Loginview()
                            }
                        label:
                            {
                                HStack{
                                    
                                    Image("google_logo")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .padding(.leading,20)
                                    
                                    Text("Continue with SignIn")
                                        .font(.customfont(.semibold, fontSize: 18))
                                        .foregroundColor(.white)
                                        .frame(minWidth: 0, maxWidth: 250, minHeight: 50, maxHeight: 50)
                                    
                                    
                                }
                                .background(Color(hex: "5383EC"))
                                .cornerRadius(20)
                            }.padding()
                            
                            
                            NavigationLink{
                                EmptyView()
                            }
                            label:{
                                HStack{
                                    
                                    Image("fb_logo")
                                        .resizable()
                                        .frame(width: 15, height: 25)
                                        .padding(.leading,20)
                                    
                                    Text("Continue with SignUp")
                                        .font(.customfont(.semibold, fontSize: 18))
                                        .foregroundColor(.white)
                                        .frame(minWidth: 0, maxWidth: 250, minHeight: 50, maxHeight: 50)
                                }
                                .background(Color.primaryApp)
                                .cornerRadius(20)
                            }
                        }
                        
                    }
                    .ignoresSafeArea()
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
                    .navigationTitle("")
                }
            }
            
        }
    }

#Preview {
    SignInView()
    
}
