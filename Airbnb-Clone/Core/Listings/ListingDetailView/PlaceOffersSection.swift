import SwiftUI

struct PlaceOffersSection: View {
    var explore: Explore
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("What this place offers")
                .font(.headline)
            
            ForEach(0..<5) { feature in
                HStack {
                    Image(systemName: "wifi")
                        .frame(width: 32)
                    
                    Text("Wi-Fi")
                        .font(.footnote)
                    
                    Spacer()
                }
            }
        }
        .padding()
    }
}
