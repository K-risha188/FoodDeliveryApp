//
//  ContentView.swift
//  FoodDeliveryApp
//
//  Created by student on 21/01/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Image("welcom_bg")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth , height: .screenHeight)
                    .ignoresSafeArea()
                
                VStack{
                    Spacer()
                    
                    Image("app_logo")
                        .resizable()
                        .frame(width: 60,height:60)
                        .scaledToFit()
                        .padding(.bottom)
                    Text("Welcome\n to our store")
//                        .font(.largeTitle)
                        .font(.customfont(.semibold, fontSize: 57))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Text("Get your groceries in as fast as one hour")
                        .foregroundColor(.white.opacity(0.5))
                        .font(.customfont(.medium ,fontSize: 15))
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    
                    NavigationLink{
                        SignInView()
                    }
                    label: {
                        Text("Get started")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                            .background(Color.primaryApp)
                            .cornerRadius(20)
                    }
                    .padding(.horizontal,30)
                    .navigationTitle("")
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
                    .ignoresSafeArea()
                        
                    
                }
        
                .padding(.bottom,90)
            }
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
