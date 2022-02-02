//
//  SwiftUIView.swift
//  tabViewWithChild
//
//  Created by Zack Jung on 1/28/22.
//

import SwiftUI

struct FirstView: View {
    @State var isChildViewActive = false
    
    var body: some View {
        VStack {
            Text("This is a main view!")
            
            NavigationLink(isActive: self.$isChildViewActive) {
                FirstChildView1()
            } label: {
                Text("activate child view")
            }
        }

    }
}

struct FirstChildView1: View {
    var body: some View {
        Text("this is a child view of the main view!")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
