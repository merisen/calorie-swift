import SwiftUI

struct WeightCard: View {
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        ZStack {
            CardBackground()
            VStack {
                CardLabel(title: "Weight", caption: "Select your weight(KG)")
                SliderValue(value: model.weight)
                Slider(value: $model.weight, in: 60...200, step: 1.0)
                    .frame(width: 150)
            }
        }.frame(width: 300, height: 500)
    }
}
