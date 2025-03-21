import SpriteKit

struct CardInfos {
    let size: CGSize = CGSize(width: 50, height: 100)
    let spacing: CGFloat = 5
}

struct ColoredPoint {
    var position: CGPoint
    var color: UIColor
}

class SKGridCircular: SKScene {
    
    override func didMove(to view: SKView) {
        // Configurando a cena
        self.backgroundColor = .white
        
        //addAxisLines()
        
        // Adicionando os quadrados na tela
        //generetPoints()
        addSquares(numberOfSquares: 100, spacing: CardInfos().spacing)
    }
    
    override init() {
        super.init(size: UIScreen.main.bounds.size)
        self.scaleMode = .resizeFill
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addAxisLines() {
        // Criar linha no eixo Y (vertical) passando pela linha zero em X
        let verticalLine = SKShapeNode(rectOf: CGSize(width: CardInfos().spacing, height: size.height))
        verticalLine.position = CGPoint(x: size.width / 2, y: size.height / 2)
        verticalLine.fillColor = .red
        verticalLine.strokeColor = .red
        addChild(verticalLine)
        
        // Criar linha no eixo X (horizontal) passando pela linha zero em Y
        let horizontalLine = SKShapeNode(rectOf: CGSize(width: size.width, height: CardInfos().spacing))
        horizontalLine.position = CGPoint(x: size.width / 2, y: size.height / 2)
        horizontalLine.fillColor = .red
        horizontalLine.strokeColor = .red
        addChild(horizontalLine)
    }
    
    func calculateRangeValue(max: Int) -> Int {
        if max <= 1 {
            return 0
        }
        
        var x = 1
        var upperBound = 7
        
        while upperBound < max {
            x += 1
            upperBound += 6 * x
        }
        
        return x + 1
    }
    
    func addSquares(numberOfSquares: Int, spacing: CGFloat) {
        guard numberOfSquares > 0 else { return }
        
        let squareWidth: CGFloat = CardInfos().size.width
        let squareHeight: CGFloat = CardInfos().size.height
        let squareSize = CGSize(width: squareWidth, height: squareHeight)
        
        let circles = calculateRangeValue(max: numberOfSquares)
        var finalPoints: [CGPoint] = []
        
        for i in 1..<circles {
            let points: [CGPoint] = hexagonVertices(width: CardInfos().size.width,
                                                    height:CardInfos().size.height,
                                                    spacing: CardInfos().spacing,
                                                    index: CGFloat(i))
            finalPoints += points
        }
        
        adicionarQuadradosAnimados(finalPoints: finalPoints, numberOfSquares: numberOfSquares)
    }
    
    func adicionarQuadradosAnimados(finalPoints: [CGPoint], numberOfSquares: Int) {
        for i in 0..<(numberOfSquares) {
            if i < numberOfSquares {
                let position = finalPoints[i]
                var color = UIColor(.yellow)
                if i >= 19 {
                    color = .red
                } else if i >= 7 {
                    color = .orange
                }
                let square = SKComponent(text: String(i + 1), color: color)
                square.position = position
                
                let delay = SKAction.wait(forDuration: Double(i) * 0.1)
                let addSquare = SKAction.run {
                    self.addChild(square)
                }
                let sequence = SKAction.sequence([delay, addSquare])
                
                print("\(String(i + 1)) [ \(String(format: "%.2f", position.x)),\(String(format: "%.2f", position.y)) ]")
                self.run(sequence)
            }
        }
    }
    
    
    func hexagonVertices(width: CGFloat, height: CGFloat, spacing: CGFloat, index: CGFloat) -> [CGPoint] {
        let radiusWidth = (width + (spacing)) * index * 2 / sqrt(3)
        let radiusHeight = (height + spacing) * index
        
        let cx = self.size.width/2
        let cy = self.size.height/2
        
        var finalVertices: [CGPoint] = []
        var vertices: [CGPoint] = []
        
        //
        if index == 1.0 {
            vertices.append(CGPoint(x: cx, y: cy))
        }
        
        for i in 0..<6 {
            let angleDeg = 60 * CGFloat(i)
            let angleRad = angleDeg * .pi / 180
            
            let x = cx - radiusWidth * cos(angleRad + (Double.pi/2))
            let y = cy + radiusHeight * sin(angleRad + (Double.pi/2))
            
            vertices.append(CGPoint(x: x, y: y))
        }
        
        if index > 1.0 {
            for point in 0..<vertices.count {
                finalVertices.append(vertices[point])
                
                var pointSelected = point
                
                if point >= vertices.count-1 {
                    pointSelected = 0
                } else {
                    pointSelected = point + 1
                }
                
                let addX = (vertices[pointSelected].x - vertices[point].x) / index
                let addY = (vertices[pointSelected].y - vertices[point].y) / index
                
                for i in 0..<(Int(index-1.0)) {
                    finalVertices.append(CGPoint(x: vertices[point].x + (addX * CGFloat(i+1)),
                                                 y: vertices[point].y + (addY * CGFloat(i+1))))
                }
            }
        } else {
            finalVertices = vertices
        }
        
        return finalVertices
    }
}
