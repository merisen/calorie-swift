import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: CalorieModel
    @State var activeCardIndex: Int = 0
    
    var body: some View {
        VStack {
            Spacer()
            switch activeCardIndex {
            case 0:
                TitleCard()
            case 1:
                GenderCard()
            case 2:
                AgeCard()
            case 3:
                HeightCard()
            case 4:
                WeightCard()
            case 5:
                ResultCard()
                CalculateButton()
                // CalculateButton(index: activeCardIndex)
            default:
                ErrorLabel(errorText: "Out of range!")
            }
            NextButton(index: $activeCardIndex)
        }
    }
}
