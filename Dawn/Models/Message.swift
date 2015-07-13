//
//  Message.swift
//  Dawn
//
//  Created by Sam Calvert on 7/12/15.
//  Copyright © 2015 elos. All rights reserved.
//

import Foundation
import ReactiveCocoa

final class Message: Persistent {
    let id: String;
    
    init (text: String) {
        id = text
    }
    static func find(id: String) -> Signal<Message, NSError> {
        DBService.getDefaultDB().find(Message.self, id: id).observe(
            next: { msg in print(msg.id) },
            error: { e in print(e) },
            interrupted: { print("int") },
            completed: { print("comp") }
        )
        return DBService.getDefaultDB().find(Message.self, id: id)
    }
}
