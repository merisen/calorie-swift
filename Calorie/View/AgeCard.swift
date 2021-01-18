import SwiftUI

struct AgeCard: View {
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        ZStack {
            CardBackground()
            VStack {
                CardLabel(title: "Age", caption: "Select your age")
                SliderValue(value: model.age)
                Slider(value: $model.age, in: 10...90, step: 1.0)
                    .frame(width: 150)
            }
        }.frame(width: 300, height: 500)
    }
}
