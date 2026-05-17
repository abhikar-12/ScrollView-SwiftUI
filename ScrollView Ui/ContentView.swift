//
//  ContentView.swift
//  ScrollView Ui
//
//  Created by Abhishek Kusalkar on 04/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView {
                Text("Horizontal ScrollView")
                    .font(.title)
                    .bold(true)
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0..<50, id: \.self){ index in
                            Rectangle()
                                .foregroundStyle(.blue)
                                .frame(width: 300,height: 200)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                        
                    }
                }
                VStack {
                    Text("Vertical ScrollView")
                        .font(.title)
                        .bold(true)
                    ForEach(0..<50, id: \.self){ index in
                        Rectangle()
                            .foregroundStyle(.blue)
                            .frame(width: 300,height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                    
                }
            }
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
