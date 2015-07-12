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
    func find<T>(kind: T.Type, id: String) -> Signal<T, NoError>;
    func update<T>(record: T) -> Signal<T, NoError>;
}
