import SpriteKit

class SKComponent: SKNode {
    var colorSelected: UIColor
    private var shape: SKShapeNode

    init(text: String, color: UIColor = .black, size: CGSize = CGSize(width: 100, height: 100)) {
        self.colorSelected = color
        
        // Define a forma com base no parâmetro `isCircle`
        
        self.shape = SKShapeNode(rectOf: CardInfos().size)
//        self.shape = SKShapeNode(circleOfRadius: CardInfos().size.width/2)
        
        super.init()
        
        // Configura a cor e o tamanho da forma
        self.shape.fillColor = .black
        self.shape.strokeColor = .clear // Sem borda
        self.shape.zPosition = 0 // Plano de fundo da forma
        self.addChild(self.shape)
        
        // Configurar o texto centralizado
        let label = SKLabelNode(text: text)
        label.fontColor = .white
        label.fontSize = 20
        label.fontName = "SFPro-Regular"
        label.verticalAlignmentMode = .center
        label.horizontalAlignmentMode = .center
        label.zPosition = 1 // Garante que o texto fique acima da forma
        
        self.addChild(label)
        
        self.flipCard3D()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func flipCard3D() {
        let scaleDown = SKAction.scaleX(to: 0.0, duration: 0.25) // Simula a rotação até o meio (lado oculto)
        let changeColor = SKAction.run {
            self.shape.fillColor = self.colorSelected // Muda a cor no meio da rotação
        }
        let scaleUp = SKAction.scaleX(to: 1.0, duration: 0.25) // Completa a rotação revelando o outro lado
        
        // Sequência que combina as ações de escala para simular a rotação 3D
        let flipSequence = SKAction.sequence([scaleDown, changeColor, scaleUp])
        
        // Executa a sequência de flip
        self.run(flipSequence)
    }
}
