import GameplayKit
import SpriteKit

class Player : GameObject
{
    // Initializer
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //Lifecycle Functions
    override func Start()
    {
        zPosition = 2
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        //Constraint the player on left boundary
        if(position.x <= -255)
        {
            position.x = -255
        }
        
        //Constraint the player on left boundary
        if(position.x >= 255)
        {
            position.x = 255
        }
    }
    
    override func Reset()
    {
        position.y = -495
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
}
