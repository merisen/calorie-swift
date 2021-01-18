import SwiftUI

struct ResultCard: View {
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        ZStack {
            CardBackground()
            VStack {
                CardLabel(title: "Result", caption: "Your basal metabolic rate is")
                Text(String(format: "%0.0f", model.resultBMR))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemBlue))
                
                Text("Calories/Day")
                    .font(.caption)
                    .padding(.top, 20)
                    .foregroundColor(Color(.systemGray))
            }
        }.frame(width: 300, height: 500)
    }
}
