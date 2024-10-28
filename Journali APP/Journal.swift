//
//  Journal.swift
//  Journali APP
//
//  Created by Yara Alsharari on 20/04/1446 AH.
//
import Foundation
import SwiftData

@Model

final class Journal : Identifiable{
    var id = UUID()
    var title : String
    var createdDate : Date
    var journaly : String
    var isbookmark : Bool = false
    
    init(id: UUID = UUID(), title: String,createdDate:Date,journaly: String,isbookmark:Bool) {
        self.id = id
        self.title = title
        self.createdDate = createdDate
        self.journaly = journaly
        self.isbookmark = isbookmark
    }
}

extension Journal {
    static var EmptyList : [Journal ] {[]}
    static var journals : [Journal] {
        [ Journal(title: "journal",createdDate: Date(),journaly: "discription",isbookmark: false)
        , Journal(title: "journal",createdDate: Date(),journaly: "discription",isbookmark: false)]
    }
}
 
