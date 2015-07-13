//
//  DBService.swift
//  Dawn
//
//  Created by Sam Calvert on 7/12/15.
//  Copyright © 2015 elos. All rights reserved.
//

import Foundation

class DBService {
    static func getDefaultDB() -> DB {
        return FixtureDB()
    }
}