

import Foundation
import SwiftUI
struct LibraryListView: View {
    let options = ["My Favorites", "Downloads", "My Playlists", "My Journal Entries"]
    let icons = ["heart", "arrow.down", "list.bullet", "book"]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0..<options.count, id: \.self) { index in
                HStack {
                    Image(systemName: icons[index])
                        .foregroundColor(.white)
                    Text(options[index])
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .padding()
                Divider().background(Color.gray)
            }
        }
        .background(Color.backgroundDark)
    }
}
