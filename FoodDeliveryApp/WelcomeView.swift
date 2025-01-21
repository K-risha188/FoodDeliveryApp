//
//  ContentView.swift
//  FoodDeliveryApp
//
//  Created by student on 21/01/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcom_bg")
                .resizable()
                .scaledToFit()
                . frame(width: 800,height:900)
            
            VStack(spacing: 20){
                Spacer()
                
                Image("app_logo")
                    .resizable()
                    .frame(width: 50,height:50)
                    .scaledToFit()
                    .padding()
                Text("Welcome")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                Text("to our store")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                Text("Get your groceries in as fast as one hour")
                    .foregroundColor(.white)
                
                Button(action:{print("Get Started tapped")})
                {
                    Text("Get started")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame()
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .padding(.bottom,90)
            }
            .padding()
        }
    }
}
#Preview {
    WelcomeView()
}
