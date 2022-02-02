//
//  ContentView.swift
//  tabViewWithChild
//
//  Created by Zack Jung on 1/28/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $router.selectedTab) {
                NavigationView {
                    FirstView()
                }
                .tag(SelectedTab.Main)
                
                NavigationView {
                    Text("Second")
                        .font(.title.bold())
                }
                .tag(SelectedTab.Second)
                
                NavigationView {
                    Text("third")
                        .font(.title.bold())
                }
                .tag(SelectedTab.Third)
            } // TabView
            
            TabItemsView()
                .frame(width: UIScreen.main.bounds.width)
        }
    }
}

struct TabItemsView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        HStack {
            Button {
                Router.shared.selectedTab = .Main
            } label: {
                if (router.selectedTab == .Main) {
                    Text(Image(systemName: "1.square.fill"))
                        .frame(width: 40, height: 40)
                        .tint(.purple)
                } else {
                    Text(Image(systemName: "1.square"))
                        .frame(width: 40, height: 40)
                }
            }
            .frame(width: 40, height: 40)
            
            Button {
                Router.shared.selectedTab = .Second
            } label: {
                if (router.selectedTab == .Second) {
                    Text(Image(systemName: "2.square.fill"))
                        .tint(.purple)
                        .frame(width: 40, height: 40)
                } else {
                    Text(Image(systemName: "2.square"))
                        .frame(width: 40, height: 40)
                }
            }
            .frame(width: 40, height: 40)
            
            Button {
                Router.shared.selectedTab = .Third
            } label: {
                if (router.selectedTab == .Third) {
                    Image(systemName: "3.square.fill")
                        .frame(width: 40, height: 40)
                        .tint(.purple)
                } else {
                    Image(systemName: "3.square")
                        .frame(width: 40, height: 40)
                }
            }
        }
//        .onChange(of: Router.shared.selectedTab) { newValue in
//            print(newValue)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
