//
//  newJournalSheet.swift
//  Journali APP
//
//  Created by Yara Alsharari on 20/04/1446 AH.
//
extension View{
    @ViewBuilder public func
    hidden(_ shouldHide : Bool) ->
    some View{
        switch shouldHide{
        case true : self.hidden()
        case false : self
        }
    }
}
import SwiftUI

struct newJournalSheet : View {
    @State   var title = ""
    @State   var journaly = ""
    @FocusState  var isfocuse : Bool
    @Environment(\.dismiss)  var dismiss
    @Environment(\.modelContext) var context
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 10){
                
                TextField("Title",text: $title).font(.system(size: 34)).fontWeight(.bold).padding()
                
               Text(Date.now.formatted(date: .numeric, time: .omitted)).font(.system(size: 16)).padding().foregroundColor(Color.lgry)
                
                ZStack(alignment: .topLeading){
                    
                    TextEditor(text: $journaly).focused( $isfocuse).padding()
                    Text("Type your journal...").font(.system(size: 20)).padding().foregroundColor(Color.gray).hidden(isfocuse)
                }
               
                
                
                
            }.toolbar{
                ToolbarItem(placement:.cancellationAction){
                    
                    
                    Button("Cancle"){
                        dismiss()
                        
                    }.foregroundColor(Color.pur).font(.system(size: 16))}
                
                ToolbarItem(placement:.confirmationAction){
                    Button("Save"){
                        
                        if (!(title.isEmpty) && !(journaly.isEmpty)){
                            context.insert(Journal(title:  title,journaly: journaly))
                            dismiss()
                            
                        }
                       
                        
                       
                   
                }.foregroundColor(Color("pur")).foregroundColor(Color.pur).padding().font(.system(size: 16)).fontWeight(.bold)}
                
            }
            
                        
        }
                        
                    }
        }
    
                    
                
    

#Preview {
    newJournalSheet()
}
