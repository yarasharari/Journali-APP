//
//  eddJournal.swift
//  Journali APP
//
//  Created by Yara Alsharari on 24/04/1446 AH.
//

import SwiftUI

struct eddJournal : View {
    @State  private var title = ""
    @State  private var journaly = ""
    @Environment(\.dismiss)  var dismiss
    @Environment(\.modelContext) var context
    @State private var isbookmark = false
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 10){
                
                TextField("Title",text: $title).font(.system(size: 34)).fontWeight(.bold).padding()
                
               Text(Date.now.formatted(date: .numeric, time: .omitted)).font(.system(size: 16)).padding().foregroundColor(Color.lgry)
                
                ZStack(alignment: .topLeading){
                    
                    TextField("Type your journal...",text: $journaly,axis: .vertical).padding()
                }
               
                Spacer()
                
            }.toolbar{
                ToolbarItem(placement:.cancellationAction){
                    
                    
                    Button("Cancle"){
                        dismiss()
                        
                    }.foregroundColor(Color.darkpur).font(.system(size: 16))}
                
                ToolbarItem(placement:.confirmationAction){
                    Button("Save"){
                        
                        if (!title.isEmpty && !journaly.isEmpty){
                            context.insert(Journal(title:  title,createdDate: Date(),journaly: journaly,isbookmark: false))
                            try!
                           
                            context.save()
                            dismiss()
                            
                        }
                       
                        
                       
                   
                    }.foregroundColor(Color.darkpur).padding().font(.system(size: 16)).fontWeight(.bold)}
                
            }
            
                        
        }
                        
                    }
}
    
