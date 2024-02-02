import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                LazyVStack(spacing: 32) {
                    ForEach(Explore.explore, id: \.self) { listing in
                        ListingItemView(explore: listing)
                            .frame(height: 400)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
