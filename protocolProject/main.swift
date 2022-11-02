//
//  main.swift
//  protocolProject
//
//  Created by Berkay on 22.10.2022.
//

import Foundation

// we can do inheretance in classes but, sometimes we dont want all the properties that main class have. And also sometimes we need to work with 10 class that includes per 10 funcs. So there might be 100 funcs.
// Sometimes we need to work with Structs sometimes Classes... SO... There is protocol

// when defining a protocol that include funcs, we must do that

protocol Flying {
    func imFlying() // there is not func fly () {...} using method is like that.
}

class Animals {
    func imAnimal() {
        print("Im Animal")
    }
}

class Cats : Animals {
    func imCat() {
        print("Im Cat")
    }
}

class Birds : Animals, Flying {
    func imFlying() {
        print("Im Flying") //
        // So all animals can not fly, right? But Birds can. So we can use flying protocol, that needs fly func...
    }
    
    func imBird () {
        print("Im Birds")
    }
}

let Meow = Cats() // So we can use both animal and cat properties

Meow.imAnimal()
Meow.imCat()

let cikcik = Birds()

cikcik.imAnimal()
cikcik.imBird()
cikcik.imFlying()



