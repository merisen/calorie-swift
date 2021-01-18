import SwiftUI

struct HeightCard: View {
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        ZStack {
            CardBackground()
            VStack {
                CardLabel(title: "Height", caption: "Select your height(CM)")
                SliderValue(value: model.height)
                Slider(value: $model.height, in: 130...250, step: 1.0)
                    .frame(width: 150)
            }
        }.frame(width: 300, height: 500)
    }
}
