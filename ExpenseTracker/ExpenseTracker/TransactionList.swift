//
//  TransactionList.swift
//  ExpenseTracker
//
//  Created by Illya Gurkov on 16.11.22.
//

import SwiftUI

struct TransactionList: View {
    @EnvironmentObject var transactionListVM: TransactionListViewMaodel
    
    var body: some View {
        VStack{
            List {
                ForEach(Array(transactionListVM.groupTransactionsByMonth()), id: \.key){ month, transactions in
                    Section {
                        ForEach(transactions) { transaction in
                            TransactionRow(transaction: transaction)
                        }
                    } header: {
                        Text(month)
                    }
                    .listSectionSeparator(.hidden)
                }
            }
                    .listStyle(.plain)
        }
        .navigationTitle("Transactions")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

struct TransactionList_Previews: PreviewProvider {
    static let transactionListVM: TransactionListViewMaodel = {
        let transactionListVM = TransactionListViewMaodel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    static var previews: some View {
        Group {
            NavigationView {
                TransactionList()
            }
            NavigationView {
                TransactionList()
                    .preferredColorScheme(.dark)
            }
        }
        .environmentObject(transactionListVM)
    }
}
