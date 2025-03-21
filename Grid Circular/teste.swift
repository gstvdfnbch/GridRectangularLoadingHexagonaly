//
//  teste.swift
//  Grid Circular
//
//  Created by Gustavo Diefenbach on 23/08/24.
//

import Foundation

let squareWidth = 1.0
let squareHeight = 1.0
let spacing = 1.0

struct Pontos {
    let points = [
        //primeiro circulo
        CGPoint(x: -1.0 * squareWidth - 1.0 * spacing, y: +1.0 * squareHeight / 2.0 + 1.0 * spacing / 2.0),// 2
        CGPoint(x: -0.0 * squareWidth - 0.0 * spacing, y: +2.0 * squareHeight / 2.0 + 2.0 * spacing / 2.0),// 3
        CGPoint(x: +1.0 * squareWidth + 1.0 * spacing, y: +1.0 * squareHeight / 2.0 + 1.0 * spacing / 2.0),// 4
        CGPoint(x: +1.0 * squareWidth + 1.0 * spacing, y: -1.0 * squareHeight / 2.0 - 1.0 * spacing / 2.0),// 5
        CGPoint(x: +0.0 * squareWidth + 0.0 * spacing, y: -2.0 * squareHeight / 2.0 - 2.0 * spacing / 2.0),// 6
        CGPoint(x: -1.0 * squareWidth - 1.0 * spacing, y: -1.0 * squareHeight / 2.0 - 1.0 * spacing / 2.0),// 7
        
        //segundo circulo
        CGPoint(x: -1.0 * squareWidth - 1.0 * spacing, y: +3.0 * squareHeight / 2.0 + 3.0 * spacing / 2.0),// 1-8
        CGPoint(x: +0.0 * squareWidth + 0.0 * spacing, y: +4.0 * squareHeight / 2.0 + 4.0 * spacing / 2.0),// 2-9
        CGPoint(x: +1.0 * squareWidth + 1.0 * spacing, y: +3.0 * squareHeight / 2.0 + 3.0 * spacing / 2.0),// 3-10
        CGPoint(x: +2.0 * squareWidth + 2.0 * spacing, y: +2.0 * squareHeight / 2.0 + 2.0 * spacing / 2.0),// 4-11
        CGPoint(x: +2.0 * squareWidth + 2.0 * spacing, y: +0.0 * squareHeight / 2.0 + 0.0 * spacing / 2.0),// 5-12
        CGPoint(x: +2.0 * squareWidth + 2.0 * spacing, y: -2.0 * squareHeight / 2.0 - 2.0 * spacing / 2.0),// 6-13
        CGPoint(x: +1.0 * squareWidth + 1.0 * spacing, y: -3.0 * squareHeight / 2.0 - 3.0 * spacing / 2.0),// 7-14
        CGPoint(x: +0.0 * squareWidth + 0.0 * spacing, y: -4.0 * squareHeight / 2.0 - 4.0 * spacing / 2.0),// 8-15
        CGPoint(x: -1.0 * squareWidth - 1.0 * spacing, y: -3.0 * squareHeight / 2.0 - 3.0 * spacing / 2.0),// 9-16
        CGPoint(x: -2.0 * squareWidth - 2.0 * spacing, y: -2.0 * squareHeight / 2.0 - 2.0 * spacing / 2.0),// 10-17
        CGPoint(x: -2.0 * squareWidth - 2.0 * spacing, y: +0.0 * squareHeight / 2.0 + 0.0 * spacing / 2.0),// 11-18
        CGPoint(x: -2.0 * squareWidth - 2.0 * spacing, y: +2.0 * squareHeight / 2.0 + 2.0 * spacing / 2.0),// 12-19
        
        //terceiro circulo
        CGPoint(x: -2.0 * (squareWidth + spacing), y: +4.0 * (squareHeight + spacing) / 2.0),// 1-20
        CGPoint(x: -1.0 * (squareWidth + spacing), y: +5.0 * (squareHeight + spacing) / 2.0),// 2-21
        CGPoint(x: -0.0 * (squareWidth + spacing), y: +6.0 * (squareHeight + spacing) / 2.0),// 3-22
        CGPoint(x: +1.0 * (squareWidth + spacing), y: +5.0 * (squareHeight + spacing) / 2.0),// 4-23
        CGPoint(x: +2.0 * (squareWidth + spacing), y: +4.0 * (squareHeight + spacing) / 2.0),// 5-24
        CGPoint(x: +3.0 * (squareWidth + spacing), y: +3.0 * (squareHeight + spacing) / 2.0),// 6-25
        CGPoint(x: +3.0 * (squareWidth + spacing), y: +1.0 * (squareHeight + spacing) / 2.0),// 6-26
        CGPoint(x: +3.0 * (squareWidth + spacing), y: -1.0 * (squareHeight + spacing) / 2.0),// 7-27
        CGPoint(x: +3.0 * (squareWidth + spacing), y: -3.0 * (squareHeight + spacing) / 2.0),// 8-28
        CGPoint(x: +2.0 * (squareWidth + spacing), y: -4.0 * (squareHeight + spacing) / 2.0),// 5-29
        CGPoint(x: +1.0 * (squareWidth + spacing), y: -5.0 * (squareHeight + spacing) / 2.0),// 4-30
        CGPoint(x: -0.0 * (squareWidth + spacing), y: -6.0 * (squareHeight + spacing) / 2.0),// 3-31
        CGPoint(x: -1.0 * (squareWidth + spacing), y: -5.0 * (squareHeight + spacing) / 2.0),// 2-32
        CGPoint(x: -2.0 * (squareWidth + spacing), y: -4.0 * (squareHeight + spacing) / 2.0),// 1-33
        CGPoint(x: -3.0 * (squareWidth + spacing), y: -3.0 * (squareHeight + spacing) / 2.0),// 8-34
        CGPoint(x: -3.0 * (squareWidth + spacing), y: -1.0 * (squareHeight + spacing) / 2.0),// 8-35
        CGPoint(x: -3.0 * (squareWidth + spacing), y: +1.0 * (squareHeight + spacing) / 2.0),// 7-36
        CGPoint(x: -3.0 * (squareWidth + spacing), y: +3.0 * (squareHeight + spacing) / 2.0),// 6-37
    ]
}
