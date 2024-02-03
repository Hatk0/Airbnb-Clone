import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // Login view
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Log in to start planning your next trip.")
                }
                
                LoginButton(text: "Log in") {
                    print("Clicked!")
                }
                
                HStack {
                    Text("Don't have an account?")
                    
                    Text("Sign up")
                        .foregroundColor(.black)
                        .underline()
                }
                .font(.caption)
            }
            
            // Profile options
            VStack(spacing: 24) {
                ProfileRowView(image: "gear", title: "Settings")
                
                ProfileRowView(image: "eye.circle", title: "Accessibility")
                
                ProfileRowView(image: "questionmark.circle", title: "Visit the Help Center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
