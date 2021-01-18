import SwiftUI

struct ErrorLabel: View {
    let errorText: String
    
    var body: some View {
        Text("ERROR: \(errorText)")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color(.systemRed))
    }
}
