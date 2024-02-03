import SwiftUI

struct BedroomView: View {
    var explore: Explore
    var bedroom: Int
    
    var body: some View {
        VStack {
            Image(systemName: "bed.double")
            
            Text("Bedroom \(bedroom)")
        }
        .frame(width: 132, height: 100)
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke(lineWidth: 1)
                .foregroundColor(.secondary)
        }
    }
}
