//
import SwiftUI

struct Splash: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
      
        if isActive{
            ContentView()
        }
        else{
            ZStack{
                LinearGradient(gradient: .init(colors: [.DP,.black]),startPoint: .center , endPoint: .bottom).edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 15){
                    
                    Image("pic1")
                    Text("Journali").font(.system(size: 42)).fontWeight(.bold)
                    Text("Your thoughts, your story").font(.system(size: 18))
               
                }.scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.2)){
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0 ){
                    self.isActive = true
                }
            }
                        
        }
                 
    }
}

#Preview {
    Splash()
}
