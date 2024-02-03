import SwiftUI

struct SectionGroup<Content: View>: View {
    var title: String
    @ViewBuilder var content: Content
    
    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
            
            content
        }
        .padding()
    }
}
