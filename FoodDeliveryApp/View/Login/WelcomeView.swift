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
                        .padding()
                    Text("Welcome")
//                        .font(.largeTitle)
                        .font(.customfont(.semibold, fontSize: 57))
                        .bold()
                        .foregroundColor(.white)
                    Text("to our store")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                    Text("Get your groceries in as fast as one hour")
                        .foregroundColor(.white)
                    
                    
                    NavigationLink{
                        SignInView()
                    } label: {
                        Text("Get started")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                            .background(Color.primaryApp)
                            .cornerRadius(10)
                    }
                    .padding(.horizontal, 10)
                }
        
                .padding(.bottom,90)
            }
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

#Preview {
    WelcomeView()
}
