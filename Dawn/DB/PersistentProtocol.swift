//
//  PersistentProtocol.swift
//  Dawn
//
//  Created by Sam Calvert on 7/12/15.
//  Copyright © 2015 elos. All rights reserved.
//

import Foundation
import ReactiveCocoa

protocol Persistent {
    var id: String { get }
    static func find(id: String) -> Signal<Self, NSError>
}