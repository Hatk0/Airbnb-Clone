import SwiftUI

struct ListingImageCarouselView: View {
    var explore: Explore
    
    var body: some View {
        TabView {
            ForEach(explore.image, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

struct ListingImageCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        ListingImageCarouselView(explore: Explore.explore[3])
    }
}
