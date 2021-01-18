import SwiftUI

struct CalculateButton: View {
    @EnvironmentObject var model: CalorieModel
    
    var body: some View {
        Text("Calculate")
            .font(.caption2)
            .fontWeight(.bold)
            .padding(.all, 8)
            .foregroundColor(Color(.white))
            .background(Color(.systemBlue))
            .cornerRadius(20)
            .frame(width: 200)
            .padding(.top, 20)
            .onTapGesture {
                model.calculateBMR()
            }
    }
}
