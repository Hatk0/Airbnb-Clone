import SwiftUI

struct FeatureRow: View {
    var explore: Explore
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "medal")
            
            VStack(alignment: .leading) {
                Text("Superhost")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Superhosts are experienced, highly rated hosts committed to providing great stays for guests.")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
    }
}
