//
//  ContentView.swift
//  swiftui_projekt
//
//  Created by Fabian Kirchmann / BBS2H20A on 24.01.22.
//

import SwiftUI


struct button:ViewModifier {
    let bg:Color?
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(bg)
            .clipShape(Circle())
            .foregroundColor(.black)
    }
}

extension View {
    func makebutton(bg: Color?) -> some View {
        self
            .modifier(button(bg: bg))
    }
}






struct ContentView: View {
    
    var body: some View {
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
