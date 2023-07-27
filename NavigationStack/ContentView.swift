//
//  ContentView.swift
//  NavigationStack
//
//  Created by scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("This is the root view🌳")
                
    }.toolbar {
                
                ToolbarItemGroup(placement: .status) {
                    
                    NavigationLink(destination: SecondView()) {
                        Text("Click me!")
                    }
                    
                    NavigationLink(destination: Text("This is the page I added myself!")) {
                        Text("Press me?") }
                    
                }
                
            }//closing toolbar
            
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
            
        }//closing Navstack
    }//closing some view
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
