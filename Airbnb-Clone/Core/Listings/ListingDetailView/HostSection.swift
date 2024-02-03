import SwiftUI

struct HostSection: View {
    var explore: Explore
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(explore.description) hosted by \(explore.hostedBy)")
                    .font(.headline)
                
                HStack(spacing: 2) {
                    Text("4 guests -")
                    Text("4 bedroom -")
                    Text("4 bed -")
                    Text("2 baths")
                }
                .font(.caption)
            }
            
            Spacer()
            
            Image(explore.personImage)
                .resizable()
                .scaledToFill()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
        }
        .padding()
    }
}
