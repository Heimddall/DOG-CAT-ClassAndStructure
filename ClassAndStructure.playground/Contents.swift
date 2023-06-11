import Foundation

////ДЗ:
//1. Сделать Класс Собаки с именем и функцией лая (компьютерные собаки лаят в print). Имя можно дать только при рождении, после чего изменить его нельзя, так же приватно должен храниться возраст, который изменяется функцией happyBirthday и должна быть функция печатающая информацию о собаке (Имя и возраст)

class Dog {
let name: String
private(set) var age: Int = 0
    
    init (name: String) {
        self.name = name
    }
    
    func happyBirthday (){
            age += 1
    }
    
    func bark () {
        print("BARK!")
    }
    
    func printInfoAboutDog () {
        print("Dog  name is \(name), \(age) year(s)")
    }

}

var dogChelsie = Dog(name: "Chelsie")
dogChelsie.printInfoAboutDog()
dogChelsie.bark()
dogChelsie.happyBirthday()
dogChelsie.happyBirthday()
dogChelsie.printInfoAboutDog()
//dogChelsie.name = "OtherName"

var dogFerlie = Dog(name: "Ferlie")
dogFerlie.printInfoAboutDog()
dogFerlie.happyBirthday()
dogFerlie.printInfoAboutDog()


//2. Создать структуру кота. У котов как мы знаем бывает 9 жизней, так что вместо возраста мы будем приватно хранить количество оставшихся жизней. Кошки не самые аккуратные питомцы и часто попадают в передряги, теряя свои жизни (too bad so sad), в функции передряги кот должен терять жизнь. В информации о коте должно выводиться просто имя или Rest In Peace <Имя>, если кот отправился в лучший из миров.
//
//(Можете проявить креативность и сделать функцию ласкания кошки при вызове которой она будет мурчать, или, например, мяукать в каждой передряге)
print("_____________________")
print("_____________________")

struct Kitty {
    let name: String
    private(set) var extraLifes: UInt8 = 9 {
        didSet { extraLifes > 0 ?
            
            print("Oh shit, \(name) it is less lifes stay! Be carefull, pls") :
            
            print("This is the END of \(name)")
        }
    }
    
    init(name: String) {
        self.name = name
    }
    
    mutating func trouble(_ lifes:UInt8 = 1) {
        guard extraLifes > lifes else {
            extraLifes = 0
            return
        }
        extraLifes -= 1
    }
    
    func printInfo(){
        extraLifes > 0 ?
        print("Kitty \(name)") :
        print("Rest In Peace \(name)")
    }
}

var mysh = Kitty(name: "Mysh")
mysh.printInfo()
mysh.trouble()
mysh.trouble()
mysh.trouble()
mysh.trouble()
mysh.trouble()
mysh.trouble()
mysh.trouble()
mysh.trouble()
mysh.trouble()
mysh.printInfo()

print("______________")
var kit = Kitty(name: "Kit")
kit.printInfo()
kit.trouble()
