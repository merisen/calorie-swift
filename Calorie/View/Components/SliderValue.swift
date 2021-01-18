import SwiftUI

struct SliderValue: View {
    let value: Double
    
    var body: some View {
        Text(String(format: "%0.0f", value))
            .font(.title)
            .frame(width: 80, height: 80)
            .foregroundColor(Color(.white))
            .background(Color(.systemBlue))
            .clipShape(Circle())
    }
}
