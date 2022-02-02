//
//  Router.swift
//  tabViewWithChild
//
//  Created by Zack Jung on 1/28/22.
//

import Foundation
import Combine
import SwiftUI

class Router: ObservableObject {
    static let shared = Router()
    
    @Published var selectedTab: SelectedTab = .Main
}

enum SelectedTab: Hashable {
    case Main
    case Second
    case Third
    case Fourth
}
