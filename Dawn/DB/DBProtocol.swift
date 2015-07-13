//
//  DBProtocol.swift
//  Dawn
//
//  Created by Sam Calvert on 7/12/15.
//  Copyright © 2015 elos. All rights reserved.
//

import Foundation
import ReactiveCocoa

protocol DB {
    func find<T: Persistent>(kind: T.Type, id: String) -> Signal<T, NSError>;
    func update<T: Persistent>(record: T) -> Signal<T, NSError>;
    func create<T: Persistent>(record: T) -> Signal<T, NSError>;
}
