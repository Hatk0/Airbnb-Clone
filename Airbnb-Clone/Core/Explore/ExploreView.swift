import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                SearchAndFilterBar()
                
                LazyVStack(spacing: 32) {
                    ForEach(Explore.explore, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView(explore: listing)
                                .frame(height: 400)
                                .cornerRadius(10)
                        }
                    }
                 }
            }
            .navigationDestination(for: Explore.self) { listing in
                ListingDetailView(explore: listing)
                    .navigationBarBackButtonHidden()
            }
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
