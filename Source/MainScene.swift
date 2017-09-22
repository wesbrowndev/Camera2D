import Foundation

class MainScene: CCNode {
    
    weak var player: CCNode!
    weak var level: CCNode!
    
    @objc func didLoadFromCCB() {
        isUserInteractionEnabled = true
        
        loadLevel()
    }
    
    override func touchBegan(_ touch: UITouch!, with event: UIEvent!) {
        player.stopAction(byTag: 1)
        
        let position: CGPoint = touch.location(in: level)
        let move: CCAction = CCActionMoveTo.action(withDuration: 0.2, position: position) as! CCAction
        
        move.tag = 1
        player.run(move)
    }
    
    override func update(_ delta: CCTime) {
        Camera2D(player)
    }
    
    func loadLevel() {
        // Player node is nested in Level1.ccb, not in MainScene.ccb
        player = self.getChildByName("player", recursively: true)
    }
    
    func Camera2D(_ target: CCNode) {
        let viewSize: CGSize = CCDirector.shared().viewSize()
        let viewCenter: CGPoint = CGPoint(x: viewSize.width / 2.0, y: viewSize.height / 2.0)
        
        var viewPosition: CGPoint = ccpSub(target.positionInPoints, viewCenter)
        
        let levelSize: CGSize = level.contentSizeInPoints
        viewPosition.x = max(0.0, min(viewPosition.x, levelSize.width - viewSize.width))
        viewPosition.y = max(0.0, min(viewPosition.y, levelSize.height - viewSize.height))
        
        level.positionInPoints = ccpNeg(viewPosition)
    }

}
