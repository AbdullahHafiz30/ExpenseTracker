//
//  Budget.swift
//  ExpanseTracker
//
//  Created by Abdullah Hafiz on 12/10/1446 AH.
//

import Foundation

struct Budget: Identifiable, Hashable {
    let id: String?
    let amount: Double?
    let startDate: String?
    let endDate: String?
    
    init(from entity: BudgetEntity) {
        self.id = entity.id ?? ""
        self.amount = entity.amount
        self.startDate = entity.startDate
        self.endDate = entity.endDate
    }
    
    init(id: String?, amount: Double?, startDate: String?, endDate: String?) {
        self.id = id
        self.amount = amount
        self.startDate = startDate
        self.endDate = endDate
    }
}
