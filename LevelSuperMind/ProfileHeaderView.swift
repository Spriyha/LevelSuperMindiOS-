
import SwiftUI

struct ProfileHeaderView: View {
    var isLibraryViewOpen: Bool

    var body: some View {
        VStack {
            HStack {
                Image(isLibraryViewOpen ? "Frame 1171277310 (1)" : "Frame 1171277310 In")
                    .resizable()
                    .frame(width: 390, height: 75)
                    .cornerRadius(5)

                Spacer()

                Button(action: {
                    print("Settings Tapped")
                }) {
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                }
            }
            .padding(.horizontal)

            Image("Frame 1171277571 (1)")
                .resizable()
                .scaledToFit()
                .frame(height: 60)
                .padding(.horizontal)
        }
        .padding(.top)
    }
}

#Preview {
    ProfileHeaderView(isLibraryViewOpen: true)  
}

