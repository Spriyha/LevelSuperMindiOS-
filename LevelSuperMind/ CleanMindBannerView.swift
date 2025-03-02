
import SwiftUI

struct CleanMindBannerView: View {
    var body: some View {
        ZStack {
        
            Image("Frame 1171277596 (1)")
                .resizable()
                .scaledToFill()
                .frame(height: 120)
                .cornerRadius(12)
                .clipped()
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal)
    }
}

#Preview {
    CleanMindBannerView()
}
