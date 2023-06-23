//
//  DoneView.swift
//  Food
//
//  Created by Groot on 2023-06-15.
//

import SwiftUI


struct DoneView: View {
    @State private var isDone = false
    var body: some View {
        VStack{
            Image("done") 
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Sucessfully Orderd")
                .font(.system(size: 22))
            
            
        }
        
    }
}

struct DoneView_Previews: PreviewProvider {
    static var previews: some View {
        DoneView()
    }
}
