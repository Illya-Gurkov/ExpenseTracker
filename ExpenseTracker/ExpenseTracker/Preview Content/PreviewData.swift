//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Illya Gurkov on 15.11.22.
//

import Foundation

var transactionPreviewData = Transaction(id: 1, date: "11/24/2022", institution: "Desjardins", account: "Visa Desjardins", merchant: "Apple", amount: 11.49, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
