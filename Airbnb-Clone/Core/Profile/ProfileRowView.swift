import SwiftUI

struct ProfileRowView: View {
    let image: String
    let title: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: image)
                
                Text(title)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                
            }
            
            Divider()
        }
    }
}

struct ProfileRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRowView(image: "gear", title: "Settings")
    }
}
