import UIKit

class Zoo{
    var AnimalArray: [Quadruped] = []
    var CountAnimal:[String: Int] = [:]
    
    func addAnimal(animal: Quadruped) -> Void {
        AnimalArray.append(animal)
        CountAnimal.updateValue(animal.count, forKey: animal.type)
    }
    
    func printCount() -> Void {
        for animal in CountAnimal {
            print("\(animal.key) - \(animal.value)")
        }
    }
}

class Quadruped {
    var type = "Quadruped"
    var name = ""
    var voice = ""
    var count = 0
    
    func walk() -> Void {
        print("walk")
    }
    func giveVoice() -> Void {
        print("\(type)\( self.name != "" ? ", whose name is \(self.name)," : ", who doesn't have name," ) says \(self.voice)")
    }
    
    func setName(name: String) -> Void {
        self.name = name
    }
    
    func printName() -> Void {
        if self.name == "" {
            print("\(type) doesn't have name :(")
        }else{
          print(self.name)
        }
        
    }
}

class Dog: Quadruped {
    override init() {
        super.init()
        self.type = "dog"
        self.voice = "woof"
        self.count += 1
    }
}

class NoisyDog: Dog {
    override init() {
        super.init()
        self.count += 1
        self.voice = "woof-woof!"
    }
}

class Cat: Quadruped {
    override init() {
        super.init()
        self.type = "cat"
        self.voice = "meow"
        self.count += 1
    }
}

class NoisyCat: Cat {
    override init() {
        super.init()
        self.voice = "MEEOOW!!!"
        self.count += 1
    }
}

var dog = Dog()
dog.setName(name: "Dog")
dog.giveVoice()

var dogBad = NoisyDog()
dogBad.name = "Bad Dog"
dogBad.giveVoice()

var cat = Cat()
cat.setName(name: "Cat")
cat.giveVoice()

var catBad = NoisyCat()
catBad.setName(name: "Bad Cat")
catBad.giveVoice()



//AnimalArray.append(dog)
//AnimalArray.append(dogBad)
//AnimalArray.append(cat)
//AnimalArray.append(catBad)

var zoo = Zoo()

cat.count
dog.count
dogBad.count

zoo.addAnimal(animal: dog)
zoo.addAnimal(animal: dogBad)
zoo.addAnimal(animal: cat)
zoo.addAnimal(animal: catBad)


zoo.CountAnimal
zoo.printCount()
