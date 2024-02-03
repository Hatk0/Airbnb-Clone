import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    
    var body: some View {
        NavigationStack {
            
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
            } else {
                ScrollView {
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation() {
                                showDestinationSearchView.toggle()
                            }
                        }
                    
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
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
