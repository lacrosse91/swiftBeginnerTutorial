import Cocoa

var str = "Hello, playground"



protocol controllerDelegate {
    func pushedA()
    func pushedB()
}


class Game: controllerDelegate {
    let AButton: String
    let BButton: String
    let gameName: String
    init(_ a: String, _ b: String, _ name: String) {
        self.AButton = a
        self.BButton = b
        self.gameName = name
    }
    func pushedA() {
        print(AButton)
    }
    func pushedB() {
        print(BButton)
    }
}

let racingGame = Game("アクセル", "ブレーキ", "レーシングゲーム")
let fightingGame = Game("パンチ", "キック", "格闘ゲーム")



class GameController {
    var delegate: controllerDelegate?
    func pushedA() {
        guard let delegate = delegate else {
            print("ソフトが指定されていません")
            return
        }
        delegate.pushedA()
    }
    func pushedB() {
        guard let delegate = delegate else {
            print("ソフトが指定されていません")
            return
        }
        delegate.pushedB()
    }
}

var gameController = GameController()

gameController.delegate = racingGame

gameController.pushedA()
//アクセル
gameController.pushedB()
//ブレーキ

gameController.delegate = fightingGame

gameController.pushedA()
//パンチ
gameController.pushedB()
//キック
