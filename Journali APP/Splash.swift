//
import SwiftUI

struct Splash: View {
    var body: some View {
        
        ZStack{
            LinearGradient(gradient: .init(colors: [.DP,.black]),startPoint: .center , endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 15){
                
                Image("pic1")
                Text("Journali").font(.system(size: 42)).fontWeight(.bold)
                Text("Your thoughts, your story").font(.system(size: 18))
            }
            
        }
                    
                 
    }
}

#Preview {
    Splash()
}
