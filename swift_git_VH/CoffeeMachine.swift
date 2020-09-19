//
//  CoffeeMachine.swift
//  swift_git_VH
//
//  Created by Viktor Golovach on 17.09.2020.
//  Copyright © 2020 Viktor Golovach. All rights reserved.
//

import Foundation

class CoffeeMachine: NSObject {
    
    var water: Double = 0
    var milk: Double = 0
    var coffeeBeans: Double = 0
    var binCount: Int = 0
    
    func espresso() -> String {
        
        if coffeeBeans < 10 {
            return "Add Some Coffee Beans"
        } else if water < 30 {
            return "Add Some Water"
        } else if binCount == 3 {
            return "Remove Bin"
        }
        water -= 30
        coffeeBeans -= 10
        binCount += 1
        return "Enjoy Espresso"
    }
    
    func americano() -> String {
        
        if water < 250 {
            return "Add Some Water"
        } else if coffeeBeans < 30 {
            return "Add Some Coffee Beans"
        } else if binCount == 3 {
            return "Remove Bin"
        }
        water -= 250
        coffeeBeans -= 30
        binCount += 1
        return "Enjoy Americano"
    }
    
    func cappuccino() -> String {
        
        if water < 30 {
            return "Add Some Water"
        } else if coffeeBeans < 10 {
            return "Add Some Coffee Beans"
        } else if milk < 200 {
            return "Add Some Milk"
        } else if binCount == 3 {
        return "Remove Bin"
        }
        water -= 30
        coffeeBeans -= 10
        milk -= 200
        binCount += 1
        return "Enjoy Cappuccino"
    }
    func latteMacchiato() -> String {
        
        if water < 30 {
            return "Add Some Water"
        } else if coffeeBeans < 10 {
            return "Add Some Coffee Beans"
        } else if milk < 200 {
            return "Add Some Milk"
        } else if binCount == 3 {
            return "Remove Bin"
        }
        water -= 30
        coffeeBeans -= 10
        milk -= 200
        binCount += 1
        return "Enjoy Latte Macchiato"
    }
    
    func addWater() -> String {
        water += 500
        return "Water Added, Chose Your Drink"
    }
    
    func addMilk() -> String {
        milk += 400
        return "Milk Added, Chose Your Drink"
    }
    
    func addCoffeeBeans() -> String {
        coffeeBeans += 50
        return "Coffee Beans Added, Chose Your Drink"
    }
    func removeBin() -> String {
        binCount = 0
        return "Bin Removed, Chose Your Drink"
    }
    
    
    
}


