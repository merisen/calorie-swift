import SwiftUI

class CalorieModel: ObservableObject {
    @Published var gender: Gender = Gender.male
    @Published var age: Double = 15
    @Published var height: Double = 130
    @Published var weight: Double = 65
    @Published var resultBMR: Double = 0
    
    func calculateBMR() {
        switch gender {
        case Gender.male:
            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) + 5
        case Gender.female:
            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) - 161
        }
    }
}
