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
    
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            
            ScrollView{
                
                
                VStack(spacing:30){
                    Spacer()
                    HStack{
                        Text("Journal")
                            .font(.system(size: 34))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                        
                        
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
                        
                        
                        Button(action:{
                            showingSheet.toggle()
                        }
                        )
                        {
                            Image(systemName: "plus").resizable().frame(width: 23,height: 23).foregroundColor(Color(.pur))
                        }.frame(width: 30, height: 30)
                            .background(Circle()).foregroundColor(Color(.gry)).padding()
                        
                        
                        
                    }
                    .padding(20)
                    
                }
                .sheet(isPresented: $showingSheet){
                    newJournalSheet()
                    
                    
                }
                
                if DataJournal.isEmpty{
                    
                    VStack(){
                        
                        
                        Image("pic1")
                        Text("Begin your Journal").fontWeight(.bold)
                            .foregroundColor(Color(.pur))
                            .multilineTextAlignment(.center).font(.system(size: 24)).padding(20)
                        
                        Text("Craft your personal diary, tap the plus icon to begin")
                            .multilineTextAlignment(.center).font(.system(size: 18))
                        
                    }.padding(60)
                    
                    
                }else {
                    VStack{
                        ForEach(DataJournal){ jour in JournalRows(jour: jour)}
                        
                    }}
                
                
            }}
    }
}



#Preview {
    ContentView()
}
