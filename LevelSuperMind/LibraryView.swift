

import Foundation
import SwiftUI

struct LibraryView: View {
    @StateObject private var viewModel = RecentViewModel()
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Recently Played")
                    .font(.title3).bold()
                    .foregroundColor(.white)
                    .padding(.leading)

                               ScrollView(.horizontal, showsIndicators: false) {
                                   HStack(spacing: 15) {
                                       ForEach(viewModel.recentlyPlayed) { item in
                                           RecentlyPlayedItemView(item: item)
                                       }
                                   }
                                   .padding()
                               }
               
                LibraryListView()
                
            
                CleanMindBannerView()
            }
        }
        .background(Color.backgroundDark)
    }
}

#Preview {
    LibraryView()
}
