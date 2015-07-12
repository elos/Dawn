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
    static func find(id: String) -> Signal<Self, NoError>;
}