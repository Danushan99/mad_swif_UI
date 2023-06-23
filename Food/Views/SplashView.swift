//
//  SplashView.swift
//  Food
//
//  Created by Groot on 2023-06-16.
//
import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack{
            Image("applogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 250)
                .padding(.bottom, 40)
            
            Text("Food Truck")
                .font(.largeTitle)
                .foregroundColor(.black)
                .edgesIgnoringSafeArea(.all)
        }
    }
}
