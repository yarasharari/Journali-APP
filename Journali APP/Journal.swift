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
    var journaly : String
    
    
    init(id: UUID = UUID(), title: String,journaly: String) {
        self.id = id
        self.title = title
        self.journaly = journaly
        
    }
}

extension Journal {
    static var EmptyList : [Journal ] {[]}
    static var journals : [Journal] {
        [ Journal(title: "journal",journaly: "discription")
        , Journal(title: "journal",journaly: "discription")]
    }
}
 
