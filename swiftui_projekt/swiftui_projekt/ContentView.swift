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
    private let images:[UIImage] = [#imageLiteral(resourceName: "fry3"),#imageLiteral(resourceName: "fry2"),#imageLiteral(resourceName: "fry"),#imageLiteral(resourceName: "images"),#imageLiteral(resourceName: "a2891e099e8df26fd09b5567ab171051")]
    @State var ImageName = ["fry","fry2","fry3","ron1","ron2"]
    
    var body: some View {
        VStack(){
            Image(systemName: self.ImageName)
        VStack(spacing:30){
                Button(action: shufflebuttonbackground){
                    Text("Start")
                        .makebutton(bg: buttonbackground.randomElement())
                        .frame(width: 200, alignment: alingnment[1])
                
            }
            HStack(){
                Button(action: showgif ){
                    Text("Gif1")
                        .makebutton(bg: buttonbackground.randomElement())
                        .frame(width: 100, alignment: .leading)
                        
                }
                    Button(action: showgif ){
                        Text("Gif2")
                            .makebutton(bg: buttonbackground.randomElement())
                            .frame(width: 100, alignment: .trailing)
                            
                    }
            }
            
        }
        .frame(alignment:.center)
        }
        
}
    func shufflebuttonbackground() {
        buttonbackground.shuffle()
        
       
    }
    
    
    
    func showgif(){
        self.ImageName = ImageName.randomElement()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

