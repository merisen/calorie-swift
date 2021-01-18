import SwiftUI

class CalorieModel: ObservableObject {
    /* Default values for selections */
    @Published var gender: Gender = Gender.notSelected
    @Published var age: Double = 0
    @Published var height: Double = 100
    @Published var weight: Double = 0
    
    @Published var resultBMR: Double = 0
    
    func calculateBMR() {
        switch gender {
        case Gender.male:
            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) + 5
        case Gender.female:
            resultBMR = (10 * weight) + (6.25 * height) - (5 * age) - 161
        case Gender.notSelected:
            resultBMR = 0
        }
    }
}
