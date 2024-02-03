import SwiftUI

struct TextAndRatingView: View {
    var explore: Explore
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(explore.title)
                .font(.title)
                .fontWeight(.semibold)
            
            HStack(spacing: 2) {
                Image(systemName: "star.fill")
                Text(explore.rating)
                Text(" - ")
                Text("28 reviews")
                    .underline()
                    .fontWeight(.semibold)
            }
            .font(.caption)
        }
    }
}
