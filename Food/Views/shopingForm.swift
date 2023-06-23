//
//  shopingForm.swift
//  Food
//
//  Created by Groot on 2023-06-15.
//
import SwiftUI

struct shopingForm: View {
    @State private var Name = ""
    @State private var Phone = ""
    @State private var address = ""
    @State private var address2 = ""
    @State private var ifPressed = false
    @State private var isOn = false
    
    @State private var quantity = ""
    // form validation
    var isFormValid: Bool {
        !Name.isEmpty && !Phone.isEmpty && !address.isEmpty && !quantity.isEmpty
    }
   
    var body: some View {
        
        VStack {
            
            Image("applogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 260)
                .padding(.bottom, 40)
           
            HStack{   Text("Name  ")
                TextField("Username", text: $Name)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color(.systemGray6)))
                    .padding(.horizontal)}
            HStack{   Text("Phone  ")
                TextField("Phone", text: $Phone)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color(.systemGray6)))
                    .padding(.horizontal)}
            HStack{   Text("Address")
                TextField("Address", text: $address)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color(.systemGray6)))
                    .padding(.horizontal)}
            HStack{   Text("Address")
                TextField("UsernAddressame", text: $address2)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color(.systemGray6)))
                    .padding(.horizontal)}
            HStack{   Text("Quantity")
                TextField("Quantity", text: $quantity)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color(.systemGray6)))
                    .padding(.horizontal)}
            HStack{
                Toggle(isOn: $isOn) {
                    Text("Cash On delevery")
                }
            }.padding()
         
            
            
            Spacer()
            Button(action: {
                ifPressed = true
            }, label: {
                Text("Order Now")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.vertical, 15)
                    .padding(.horizontal, 100)
                    .background(Color.red)
                    .cornerRadius(10)
            })
            .padding()
            .disabled(!isFormValid)
            
            Spacer()
        }
        .padding()
        .background(Color(.systemBackground))
        .edgesIgnoringSafeArea(.all)
        .fullScreenCover(isPresented: $ifPressed, content: {
            DoneView()
    }
               )          }
                         
                         }
                         

struct shopingForm_Previews: PreviewProvider {
    static var previews: some View {
        shopingForm()
    }
}
