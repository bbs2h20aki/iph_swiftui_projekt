//
//  ContentView.swift
//  swiftui_projekt
//
//  Created by Fabian Kirchmann / BBS2H20A on 24.01.22.
//

import SwiftUI


struct ContentView: View {
    
    @State var books = [Book]()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear() {
                Api().loadData { (books) in
                    self.books = books
                }
            }.navigationTitle("Book List")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
