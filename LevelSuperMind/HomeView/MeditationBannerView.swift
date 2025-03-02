

import Foundation
import SwiftUI

struct MeditationBannerView: View {
    var body: some View {
        Image("Today's meditation")
            .resizable()
            .scaledToFit()
            .frame(width: 414, height: 213) 
            .cornerRadius(12)
            .padding(.horizontal)
    }
}
