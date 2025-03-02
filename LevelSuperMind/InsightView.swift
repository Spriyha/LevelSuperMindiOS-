
import Foundation
import SwiftUI

struct InsightsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
               MindfulnessPracticeView()

                WeeklyComparision()
                
                MindfulDaysView()

                MyStatisticsView()
                
                CleanMindBannerView()
            }
            .padding()
        }
        .background(Color.backgroundDark)
    }
}

#Preview {
    InsightsView()
}
