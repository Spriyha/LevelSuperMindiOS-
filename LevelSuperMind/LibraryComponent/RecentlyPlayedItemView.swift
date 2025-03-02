

import SwiftUI

struct RecentlyPlayedItemView: View {
    let item: RecentlyPlayedItem

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Image(item.imageName)
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(10)

           Text("Meditation · 5 Mins")
                .font(.caption)
                .fontWeight(.bold)
                .padding(.horizontal, 6)
               // .padding(.vertical, 2)
                .foregroundColor(Color.tealAccent)
                .cornerRadius(5)
     
            Text("Workplace Anxiety")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.horizontal, 6)
            
            Text("Avi Arya")
                .font(.subheadline)
                .foregroundColor(.white)
                .padding(.horizontal, 6)
        }
        .frame(width: 150)
    }
}
