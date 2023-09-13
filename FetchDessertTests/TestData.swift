//
//  TestData.swift
//  FetchDessertTests
//
//  Created by Timmy Nguyen on 9/12/23.
//

import Foundation

let whiteChocolateData: Data = """
{
    "meals": [
        {
            "idMeal": "52917",
            "strMeal": "White chocolate creme brulee",
            "strDrinkAlternate": null,
            "strCategory": "Dessert",
            "strArea": "French",
            "strInstructions": "Heat the cream, chocolate and vanilla pod in a pan until the chocolate has melted. Take off the heat and allow to infuse for 10 mins, scraping the pod seeds into the cream. If using the vanilla extract, add straight away. Heat oven to 160C/fan 140C/gas 3. Beat yolks and sugar until pale. stir in the chocolate cream. Strain into a jug and pour into ramekins. Place in a deep roasting tray and pour boiling water halfway up the sides. Bake for 15-20 mins until just set with a wobbly centre. Chill in the fridge for at least 4 hrs. To serve, sprinkle some sugar on top of the brûlées and caramelise with a blowtorch or briefly under a hot grill. Leave caramel to harden, then serve.",
            "strMealThumb": "https://www.themealdb.com/images/media/meals/uryqru1511798039.jpg",
            "strTags": "Desert,DinnerParty,Pudding",
            "strYoutube": "https://www.youtube.com/watch?v=LmJ0lsPLHDc",
            "strIngredient1": "Double Cream",
            "strIngredient2": "White Chocolate Chips",
            "strIngredient3": "Vanilla",
            "strIngredient4": "Egg Yolks",
            "strIngredient5": "Caster Sugar",
            "strIngredient6": "Caster Sugar",
            "strIngredient7": "",
            "strIngredient8": "",
            "strIngredient9": "",
            "strIngredient10": "",
            "strIngredient11": "",
            "strIngredient12": "",
            "strIngredient13": "",
            "strIngredient14": "",
            "strIngredient15": "",
            "strIngredient16": "",
            "strIngredient17": "",
            "strIngredient18": "",
            "strIngredient19": "",
            "strIngredient20": "",
            "strMeasure1": "568ml",
            "strMeasure2": "100g ",
            "strMeasure3": "Pod of",
            "strMeasure4": "6",
            "strMeasure5": "2 tbs",
            "strMeasure6": "Top",
            "strMeasure7": "",
            "strMeasure8": "",
            "strMeasure9": "",
            "strMeasure10": "",
            "strMeasure11": "",
            "strMeasure12": "",
            "strMeasure13": "",
            "strMeasure14": "",
            "strMeasure15": "",
            "strMeasure16": "",
            "strMeasure17": "",
            "strMeasure18": "",
            "strMeasure19": "",
            "strMeasure20": "",
            "strSource": "https://www.bbcgoodfood.com/recipes/2540/white-chocolate-crme-brle",
            "strImageSource": null,
            "strCreativeCommonsConfirmed": null,
            "dateModified": null
        }
    ]
}
""".data(using: .utf8)!

let mealsData: Data = """
{
    "meals": [
        {
            "strMeal": "Apam balik",
            "strMealThumb": "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg",
            "idMeal": "53049"
        },
        {
            "strMeal": "Apple & Blackberry Crumble",
            "strMealThumb": "https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg",
            "idMeal": "52893"
        },
        {
            "strMeal": "Apple Frangipan Tart",
            "strMealThumb": "https://www.themealdb.com/images/media/meals/wxywrq1468235067.jpg",
            "idMeal": "52768"
        },
        {
            "strMeal": "Bakewell tart",
            "strMealThumb": "https://www.themealdb.com/images/media/meals/wyrqqq1468233628.jpg",
            "idMeal": "52767"
        },
        {
            "strMeal": "Banana Pancakes",
            "strMealThumb": "https://www.themealdb.com/images/media/meals/sywswr1511383814.jpg",
            "idMeal": "52855"
        }
    ]
}

""".data(using: .utf8)!
