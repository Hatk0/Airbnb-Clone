import SwiftUI

struct ListingDetailView: View {
    var explore: Explore
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView(explore: explore)
                    .frame(height: 320)
                
                Button {
                    dismiss() 
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                        .background {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
//                        .padding(32)
                        .padding(.leading, 30)
                        .padding(.top, 80)
                }

            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(explore.title)
                    .font(.title)
                    .fontWeight(.semibold)
                
                Text("Buenos Aires, Argentina")
                    .font(.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            
            Divider()
            
            Group {
                HostSection(explore: explore)
                FeaturesSection(explore: explore)
                BedroomsSection(explore: explore)
                PlaceOffersSection(explore: explore)
            }
            
            Divider()
            
            MapView()
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 72)
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(explore.price)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxes")
                            .font(.footnote)
                        
                        Text("Feb 3 - 18")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button {
                        // Action
                    } label: {
                        Text("Reserve")
                            .foregroundColor(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .cornerRadius(8)
                    }

                }
                .padding(.horizontal, 32)
            }
            .background(.white)
        }
    }
}

struct ListingDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListingDetailView(explore: Explore.explore[3])
    }
}
