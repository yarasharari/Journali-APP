//
//  ContentView.swift
//  Journali APP
//
//  Created by Yara Alsharari on 14/04/1446 AH.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State var showingSheet = false
    @Query var DataJournal :[Journal]
    @Environment(\.modelContext) var context
    
    
    
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.black.ignoresSafeArea()
                VStack(spacing:10){
                    //                    Spacer()
                    
                    
                    if DataJournal.isEmpty{
                        
                        VStack{
                            
                            
                            Image("pic1")
                            Text("Begin your Journal").fontWeight(.bold)
                                .foregroundColor(Color(.pur))
                                .multilineTextAlignment(.center).font(.system(size: 24)).padding(20)
                            
                            Text("Craft your personal diary, tap the plus icon to begin")
                                .multilineTextAlignment(.center).font(.system(size: 18))
                            
                        }/*.padding(60)*/
                        
                        
                    }
                    else {
                        
                        List{
                            ForEach(DataJournal, id: \.self){ jour in
                                VStack(alignment: .leading){
                                    
                                    HStack{
                                        
                                        Text(jour.title).font(.system(size: 24)).fontWeight(.bold).foregroundColor(Color.pur)
                                        Spacer()
                                        Image(systemName: "bookmark").foregroundColor(Color.pur)
                                    }.padding()
                                    
                                    Text(Date.now.formatted(date: .numeric, time: .omitted)).font(.system(size: 16)).padding( .bottom, 10.0).foregroundColor(Color.lgry).padding(.leading)
                                    
                                    Text(jour.journaly).font(.system(size: 20)).padding().foregroundColor(Color.white)
                                    
                                }
                                .swipeActions(edge:.trailing, allowsFullSwipe: false) {
                                    Button(role: .destructive) {
                                        context.delete(jour)
                                      
                                        
                                    }
                                    label: {
                                        Label(" ", systemImage: "trash.fill")
                                    }
                                }
                                .tint(.red)}
                                .swipeActions(edge: .leading,allowsFullSwipe: false) {
                                    Button {
                                        
                                    }
                                    label: {
                                        Label(" ", systemImage: "pencil")
                                    }
                                }.tint(.darkpur)
                            
                        }.listRowSpacing(15)}}.navigationTitle("Journaly")
                    .toolbar{
                        ToolbarItem(placement:.confirmationAction){
                            
                            
                            Menu{
                                Button("Bookmark",action: {})
                                Button("Journal Date",action: {})
                            }
                            label: {
                                Image(systemName: "line.3.horizontal.decrease").resizable().frame(width: 19,height:17 ).foregroundColor(Color(.pur))
                            }
                            .frame(width: 30, height: 30)
                            .background(Circle())
                            .foregroundColor(Color(.gry)).padding()
                            
                        }
                        
                        ToolbarItem(placement:.confirmationAction){
                            
                            Button(action:{
                                showingSheet.toggle()
                            })
                            {
                                Image(systemName: "plus").resizable().frame(width: 23,height: 23).foregroundColor(Color(.pur)).offset(x:-4)
                            }.frame(width: 30, height: 30)
                                .background(Circle()).foregroundColor(Color(.gry)).padding()
                            
                            
                                .sheet(isPresented: $showingSheet){
                                    newJournalSheet()
                                    
                                    
                                }
                            
                        }
                        
                    }
                
                
                //.n
            }
            
        }
    }
    
}

#Preview {
    ContentView()
}
