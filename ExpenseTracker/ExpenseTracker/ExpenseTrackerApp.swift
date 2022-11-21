//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Illya Gurkov on 15.11.22.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewMaodel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
