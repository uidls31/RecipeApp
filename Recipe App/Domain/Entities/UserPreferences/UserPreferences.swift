import Foundation

enum Cuisines: String, CaseIterable {
    case italian = "Italian"
    case japanese = "Japanese"
    case indonesian = "Indonesian"
    case chinese = "Chinese"
    case indian = "Indian"
    case american = "American"
}

enum CookingTime: String, CaseIterable {
    case upTo15 = "0-15 minutes"
    case upTo30 = "15-30 minutes"
    case upTo60 = "30-60 minutes"
    case upTo90 = "60-90 minutes"
    case upTo120 = "90-120 minutes"
}

enum DietaryPreference: String, CaseIterable {
    case none = "None"
    case vegetarian = "Vegetarian"
    case vegan = "Vegan"
    case halal = "Halal"
    case glutenFree = "Gluten-Free"
}
