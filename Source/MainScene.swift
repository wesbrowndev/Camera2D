import Foundation

class MainScene: CCNode {
    
    weak var playerNode: CCNode!
    weak var levelNode: CCNode!
    
    // SpriteBuilder uses didLoadFromCCB() which is similar to override init()
    func didLoadFromCCB() {
        userInteractionEnabled = true
        
        loadLevel()
    }
    
    override func touchBegan(touch: CCTouch!, withEvent event: CCTouchEvent!) {
        playerNode.stopActionByTag(1)
        
        let position: CGPoint = touch.locationInNode(levelNode)
        let move: CCAction = CCActionMoveTo.actionWithDuration(0.2, position: position) as! CCAction
        
        move.tag = 1
        playerNode.runAction(move)
    }
    
    override func update(delta: CCTime) {
        Camera2D(playerNode)
    }
    
    func loadLevel() {
        // Player node is nested in Level1.ccb, not in MainScene.ccb
        playerNode = self.getChildByName("player", recursively: true)
    }
    
    func Camera2D(target: CCNode) {
        let viewSize: CGSize = CCDirector.sharedDirector().viewSize()
        let viewCenter: CGPoint = CGPointMake(viewSize.width / 2.0, viewSize.height / 2.0)
        
        var viewPosition: CGPoint = ccpSub(target.positionInPoints, viewCenter)
        
        let levelSize: CGSize = levelNode.contentSizeInPoints
        viewPosition.x = max(0.0, min(viewPosition.x, levelSize.width - viewSize.width))
        viewPosition.y = max(0.0, min(viewPosition.y, levelSize.height - viewSize.height))
        
        levelNode.positionInPoints = ccpNeg(viewPosition)
    }

}
