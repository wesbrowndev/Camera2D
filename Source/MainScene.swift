import Foundation

class MainScene: CCNode {
    
    weak var player: CCNode!
    weak var level: CCNode!
    
    func didLoadFromCCB() {
        userInteractionEnabled = true
        
        loadLevel()
    }
    
    override func touchBegan(touch: UITouch!, withEvent event: UIEvent!) {
        player.stopActionByTag(1)
        
        let position: CGPoint = touch.locationInNode(level)
        let move: CCAction = CCActionMoveTo.actionWithDuration(0.2, position: position) as! CCAction
        
        move.tag = 1
        player.runAction(move)
    }
    
    override func update(delta: CCTime) {
        Camera2D(player)
    }
    
    func loadLevel() {
        // Player node is nested in Level1.ccb, not in MainScene.ccb
        player = self.getChildByName("player", recursively: true)
    }
    
    func Camera2D(target: CCNode) {
        let viewSize: CGSize = CCDirector.sharedDirector().viewSize()
        let viewCenter: CGPoint = CGPointMake(viewSize.width / 2.0, viewSize.height / 2.0)
        
        var viewPosition: CGPoint = ccpSub(target.positionInPoints, viewCenter)
        
        let levelSize: CGSize = level.contentSizeInPoints
        viewPosition.x = max(0.0, min(viewPosition.x, levelSize.width - viewSize.width))
        viewPosition.y = max(0.0, min(viewPosition.y, levelSize.height - viewSize.height))
        
        level.positionInPoints = ccpNeg(viewPosition)
    }

}
