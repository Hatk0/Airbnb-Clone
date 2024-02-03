import SwiftUI

struct LoginButton: View {
    var text: String
    var clicked: () -> Void

    var body: some View {
        Button {
            clicked()
        } label: {
            Text(text)
                .foregroundColor(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 48)
                .background(.pink)
                .cornerRadius(8)
        }

    }
}
