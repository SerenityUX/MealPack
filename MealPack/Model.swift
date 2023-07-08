//
//  Model.swift
//  MealPack
//
//  Created by Thomas Stubblefield on 7/8/23.
//

import Foundation

class Model: ObservableObject {
    @Published var recipes: [Recipe] = []

    init() {
        getRecipes()
    }

    func getRecipes() {
        let users: [User] = [
            User(id: 1, phone: "+1-202-555-0101", name: "Fiona Fruit", avatar: "fiona_fruit.png"),
            User(id: 2, phone: "+1-202-555-0102", name: "Vera Veggie", avatar: "vera_veggie.png"),
            User(id: 3, phone: "+1-202-555-0103", name: "Gary Grain", avatar: "gary_grain.png"),
            User(id: 4, phone: "+1-202-555-0104", name: "Lena Lentil", avatar: "lena_lentil.png"),
            User(id: 5, phone: "+1-202-555-0105", name: "Oscar Organic", avatar: "oscar_organic.png")
        ]

        recipes = [
            Recipe(id: 1,
                   name: "Quinoa Salad",
                   thumbnail: "https://cloud-d7w28e9ny-hack-club-bot.vercel.app/0image.png",
                   description: "A fresh and healthy quinoa salad with lots of greens.",
                   ingredients: ["1 cup quinoa", "2 cups water", "1/4 cup olive oil", "2 limes, juiced", "2 teaspoons ground cumin", "1 teaspoon salt", "1/2 teaspoon red pepper flakes", "1 1/2 cups halved cherry tomatoes", "1 (15 ounce) can black beans, drained and rinsed", "5 green onions, finely chopped", "1/4 cup chopped fresh cilantro", "1 diced red bell pepper", "1 cup frozen corn, thawed"],
                   directions: ["Bring quinoa and water to a boil in a saucepan over high heat. Reduce heat to medium-low, cover, and simmer until quinoa is tender and water has been absorbed, 10 to 15 minutes. Set aside to cool.", "In a large bowl, whisk olive oil, lime juice, cumin, 1 teaspoon salt, and red pepper flakes together to create the dressing.", "In a large bowl, mix quinoa, tomatoes, black beans, and green onions. Stir in cilantro. Pour dressing over quinoa mixture; toss to coat. Stir in corn and red pepper. Serve immediately or chill in refrigerator."],
                   author: users[1],
                   shares: [users[2], users[3]]),
                   
            Recipe(id: 2,
                   name: "Tofu Stir-Fry",
                   thumbnail: "https://cloud-re88z5ze8-hack-club-bot.vercel.app/0image.png",
                   description: "A quick, easy, and delicious vegan stir-fry with tofu and vegetables.",
                   ingredients: ["14 oz firm tofu", "1 tbsp vegetable oil", "1 red bell pepper", "1 green bell pepper", "2 cloves of garlic", "1/2 cup soy sauce", "1 tbsp cornstarch", "2 green onions", "1 tbsp sesame seeds"],
                   directions: ["Press tofu for 15 minutes and then cut into cubes.", "Heat the oil in a pan over medium heat. Add the tofu cubes and fry until golden brown.", "While the tofu is frying, slice the bell peppers and mince the garlic.", "Remove the tofu from the pan and add the bell peppers and garlic. Fry until tender.", "In a bowl, mix the soy sauce and cornstarch until smooth. Add to the pan and stir until the sauce has thickened.", "Return the tofu to the pan and stir until coated in the sauce.", "Serve the stir-fry over rice and garnish with the green onions and sesame seeds."],
                   author: users[0],
                   shares: [users[3], users[4]])
        ]
        
        
        //Get Recipes
    }
}

struct Recipe: Codable, Identifiable, Hashable {
    let id: Int
    let name: String
    let thumbnail: String
    let description: String
    let ingredients: [String]
    let directions: [String]
    let author: User
    let shares: [User]?
}

struct User: Codable, Identifiable, Hashable {
    var id: Int
    var phone: String
    var name: String
    var avatar: String
}
