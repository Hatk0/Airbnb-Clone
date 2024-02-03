import SwiftUI

struct FeaturesSection: View {
    var explore: Explore
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            FeatureRow(explore: explore)
            FeatureRow(explore: explore)
        }
        .padding()
    }
}
