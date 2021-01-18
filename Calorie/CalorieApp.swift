import SwiftUI

@main
struct CalorieApp: App {
    @StateObject var model: CalorieModel = CalorieModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
}
