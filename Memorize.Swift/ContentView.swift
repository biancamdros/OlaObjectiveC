import SwiftUI

struct ContentView: View {
    var body: some View{
        HStack{
            ForEach(0..<4) {index in 
                CardView()
        }
    }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View{
    var isFaceUp: Bool

    var body: some View{
        ZStack {
            if isFaceUp{
                RoundedRectangle(cornerRadius:10.0).stroke()
                RoundedRectangle(cornerRadius:10.0).fill(Color.white)
                Text("<3")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

