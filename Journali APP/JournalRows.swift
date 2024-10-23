//
//  JournalRows.swift
//  Journali APP
//
//  Created by Yara Alsharari on 20/04/1446 AH.
//

import SwiftUI

struct JournalRows : View {
    let jour : Journal
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(jour.title).font(.system(size: 24)).fontWeight(.bold).foregroundColor(Color.pur)
                Spacer()
                Image(systemName: "bookmark").foregroundColor(Color.pur)
            }.padding()
            
            Text(Date.now.formatted(date: .numeric, time: .omitted)).font(.system(size: 16)).padding( .bottom, 10.0).foregroundColor(Color.lgry).padding(.leading)
            
            Text(jour.journaly).font(.system(size: 20)).padding().foregroundColor(Color.white)
        }.frame(width: 282, height: 227)
            .background(Rectangle()).foregroundColor(Color(.gry)).cornerRadius(14).shadow(radius: 20)
    }}

#Preview {
    JournalRows(jour: Journal(title: "JOURNAL", journaly: "first"))
}
