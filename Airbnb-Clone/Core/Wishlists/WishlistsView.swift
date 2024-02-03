import SwiftUI

struct WishlistsView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Log in to your wishlists.")
                        .font(.headline)
                    
                    Text("You can create, view or edit once you've logged in.")
                        .font(.footnote)
                }
                
                LoginButton(text: "Log in") {
                    print("Clicked!")
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

struct WishlistsView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistsView()
    }
}
