//
//  newJournalSheet.swift
//  Journali APP
//
//  Created by Yara Alsharari on 20/04/1446 AH.
//

import SwiftUI

struct newJournalSheet : View {
   
    
    @Environment(\.dismiss)  var dismiss
    @Environment(\.modelContext) var context
    @Bindable var jour : Journal
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 10){
                
                TextField("Title",text: $jour.title,axis: .vertical).font(.system(size: 34)).fontWeight(.bold).padding()
                
               Text(Date.now.formatted(date: .numeric, time: .omitted)).font(.system(size: 16)).padding().foregroundColor(Color.lgry)
                
                ZStack(alignment: .topLeading){
                    
                    TextField("Type your journal...",text: $jour.journaly,axis: .vertical).padding()
                    Spacer()
                }
                
               
                
                
                
            }.toolbar{
                ToolbarItem(placement:.cancellationAction){
                    
                    
                    Button("Cancle"){
                        dismiss()
                        
                    }.foregroundColor(Color.pur2).font(.system(size: 16))}
                
                ToolbarItem(placement:.confirmationAction){
                    Button("Save"){
                        
                        if (!$jour.title.wrappedValue.isEmpty && !$jour.journaly.wrappedValue.isEmpty){
                            context.insert(jour)
                            try?
                            context.save()
                            dismiss()
                            
                        }
                       
                        
                       
                   
                    }.foregroundColor(Color.pur2).padding().font(.system(size: 16)).fontWeight(.bold)}
                
            }
            
                        
        }
                        
                    }
        }
    
                    
                


#Preview {
    newJournalSheet(jour:Journal(title: "", journaly: ""))
}
