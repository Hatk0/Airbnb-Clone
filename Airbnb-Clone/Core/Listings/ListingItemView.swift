import SwiftUI

struct ListingItemView: View {
    var explore: Explore
    
    var body: some View {
        // Images
        VStack(spacing: 8) {
            ListingImageCarouselView(explore: explore)
                .frame(height: 320)
                .cornerRadius(10)
            
            // Items
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text(explore.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("\(explore.distance) mi away")
                        .foregroundStyle(.secondary)
                        .foregroundStyle(.black)
                    
                    Text("Feb 3 - 18")
                        .foregroundStyle(.secondary)
                        .foregroundStyle(.black)
                    
                    HStack(spacing: 4) {
                        Text(explore.price)
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text(explore.rating)
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

struct ListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView(explore: Explore.explore[1])
    }
}
