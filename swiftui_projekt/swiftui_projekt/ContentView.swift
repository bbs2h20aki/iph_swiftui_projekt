//
//  ContentView.swift
//  swiftui_projekt
//
//  Created by Fabian Kirchmann / BBS2H20A on 24.01.22.
//

import SwiftUI


struct cbutton:ViewModifier {
    let bg:Color?
    
    func body(content: Content) -> some View {
        content
            .padding()
            .background(bg)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .foregroundColor(.black)
    }
}

extension View {
    func makebutton(bg: Color?) -> some View {
        self
            .modifier(cbutton(bg: bg))
    }
}






struct ContentView: View {
    @State var buttonbackground: [Color] = [.red,.green,.blue,.yellow,.gray,.orange,.pink,.purple]
    private let alingnment:[Alignment] = [.leading,.center,.trailing]
    
    var body: some View {
        VStack(spacing: 30){
                Button(action: shufflebuttonbackground){
                    Text("Start")
                        .makebutton(bg: buttonbackground.randomElement())
                        .frame(width: 200, alignment: alingnment[1])
                
            }
        }
}
    func shufflebuttonbackground() {
        buttonbackground.shuffle()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

