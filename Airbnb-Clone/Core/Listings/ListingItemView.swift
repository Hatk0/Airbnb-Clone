import SwiftUI

struct ListingItemView: View {
    var explore: Explore
    
    var body: some View {
        // Images
        VStack(spacing: 8) {
            TabView {
                ForEach(explore.image, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height: 320)
            .cornerRadius(10)
            .tabViewStyle(.page)
            
            // Items
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text(explore.title)
                        .fontWeight(.semibold)
                    
                    Text("\(explore.distance) mi away")
                        .foregroundStyle(.secondary)
                    
                    Text("Feb 3 - 18")
                        .foregroundStyle(.secondary)
                    
                    HStack(spacing: 4) {
                        Text(explore.price)
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text(explore.rating)
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

struct ListingItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListingItemView(explore: Explore.explore[0])
    }
}
