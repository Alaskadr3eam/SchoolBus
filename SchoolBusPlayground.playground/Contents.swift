/*: 
⬇️ *Vous pouvez ignorez le code ci-dessous, il nous permet juste d'initialiser et de visualiser le canvas à droite.*
 */
import PlaygroundSupport
let canvas = Canvas()
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = canvas

/*:
 - - -
 # Découverte du canevas
 Le canevas, c'est l'étendue de pelouse verte qui se trouve sur la droite 🌿.
 Sur ce canevas, nous allons pouvoir dessiner notre route. Et nous allons faire cela en utilisant les fonctions proposées par le canevas :
 ## Route

 `canvas.createRoadSection()`
 - 🛣 Cette fonction permet de **créer une section de route**. A chaque appel de cette fonction, une nouvelle section de route est crée.

 `canvas.createHomeRoadSection()`
 - 🛣🏠 Similaire à la précédente, cette fonction permet de créer une section de route **qui contient une maison**.

 `canvas.createSchoolRoadSection()`
 - 🛣🏫 Similaire à la précédente, cette fonction permet de créer une section de route **qui contient une école**.

 ## Bus
 `canvas.moveBusForward()`

 - 🚌➡️ Cette fonction permet de faire avancer le bus jusqu'à la section de route suivante. Attention, le bus ne peut pas avancer s'il n'y a plus de route devant lui.

 `canvas.stopBus()`
 - 🚌🛑 Cette fonction permet de faire marquer un arrêt au bus.

 ## A vous de jouer !
 */
class Bus {
    var driverName: String
    var seats = 20
    var occupiedSeats = 0
    
    let numberOfWheel = 4
    
    init(driverName: String) {
        self.driverName = driverName
    }
    
    func moveForward() {
        canvas.moveBusForward()
    }
    
    func stop() {
        canvas.stopBus()
    }
    
    func drive(road: Road) {
        for _ in road.sections  {
        moveForward()
        }
        
    }
}

class Road {
    var sections = [RoadSection]()
    
    init(length: Int) {
        for length in 0..<length {
            sections.append(RoadSection()) // self. or not self.?
            }
        }
    
    }
    


class RoadSection {
    init() {
        canvas.createRoadSection()
    }
    
}

var unBus = Bus(driverName: "jean")
unBus.driverName





