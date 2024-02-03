import SwiftUI

struct BedroomsSection: View {
    var explore: Explore
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Where you'll sleep")
                .font(.headline)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(1..<5) { bedroom in
                        BedroomView(explore: explore, bedroom: bedroom)
                    }
                }
            }
        }
        .padding()
    }
}
