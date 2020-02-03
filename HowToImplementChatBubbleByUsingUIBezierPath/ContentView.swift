//
//  ContentView.swift
//  HowToImplementChatBubbleByUsingUIBezierPath
//
//  Created by ramil on 03.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var msg = "Hi, \n I'm App-Designer, iOS apps developer and apps designer"
    
    var body: some View {
        VStack {
            Text(msg)
                .padding(12)
                .foregroundColor(.white)
                .background(Color.blue)
                .clipShape(Bubble(chat: true))
        }
        .padding()
        .background(Color.green)
        .clipShape(Bubble(chat: true))
    }
}

struct Bubble: Shape {
    var chat: Bool
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topRight, .topLeft, chat ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 20, height: 20))
        
        return Path(path.cgPath)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
