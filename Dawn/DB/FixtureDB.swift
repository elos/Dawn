//
//  FixtureDB.swift
//  Dawn
//
//  Created by Sam Calvert on 7/12/15.
//  Copyright © 2015 elos. All rights reserved.
//

import Foundation
import ReactiveCocoa

class FixtureDB: DB {
    let recordsSignal: Signal<Persistent, NSError>
    let recordsObserver: Signal<Persistent, NSError>.Observer
    
    init() {
        (recordsSignal, recordsObserver) = Signal<Persistent, NSError>.pipe()
    }
    
    private func async(closure: () -> ()) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), closure)
    }
    
    func find<T : Persistent>(kind: T.Type, id: String) -> Signal<T, NSError> {
        async {
            sendNext(self.recordsObserver, Message(text: "Hello, Swift"))
        }
        return recordsSignal
            |> filter { record in record is T && record.id == id }
            |> map { record in record as! T }
    }
    
    func update<T : Persistent>(record: T) -> Signal<T, NSError> {
        return recordsSignal
            |> filter { record in record is T }
            |> map { record in record as! T }
    }
    
    func create<T : Persistent>(record: T) -> Signal<T, NSError> {
        return recordsSignal
            |> filter { record in record is T }
            |> map { record in record as! T }
    }
}