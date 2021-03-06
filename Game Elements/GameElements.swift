//
//  File.swift
//  CrazyBounce
//
//  Created by Semper Idem on 14-12-8.
//  Copyright (c) 2014年 益行人-星夜暮晨. All rights reserved.
//

// 类别码定义
let ballCategory: UInt32 = 0x1 << 0
let CleanBallCategory: UInt32 = 0x1 << 1
let LongBallCategory: UInt32 = 0x1 << 2
let SlowBallCategory: UInt32 = 0x1 << 3
let waterCategory: UInt32 = 0x1 << 4
let barCategory: UInt32 = 0x1 << 5

/// 游戏模式
enum GameMode: String {
    /// 普通模式
    case Normal = "普通模式"
    /// 经典模式
    case Classic = "经典模式"
    /// 道具模式
    case Items = "道具模式"
}

extension Int {
    /// 将时间（毫秒）转换为00:00格式
    func timeTransformToString() -> String{
        var str = ""
        let second:Int = self / 60
        let midSecond:Int = self % 60
        if second < 10 {
            str = "0" + String(second) + "\""
        }
        else {
            str = String(second) + "\""
        }
        if midSecond < 10 {
            str += "0" + String(midSecond)
        }
        else {
            str += String(midSecond)
        }
        return str
    }
}

let Tips = [
    0:"提示：摁住滑块不要让小球掉下来",
    1:"不要快速移动滑块，别怪我没提醒你",
    2:"那么我们的问题就来了",
    3:"挖掘机技术到底哪家强",
    4:"开发程序猿能坚持25秒哦！",
    5:"怪我咯？",
    6:"我也是醉了",
    7:"我想请你吃麻辣烫",
    8:"我只想做一个安静的美男子",
    9:"我想起那夕阳下的奔跑，那是我逝去的青春",
    10:"万万没想到，最后我还是死了",
    11:"23333333333",
    12:"我是小学生不太会说话",
    13:"有什么说的不对的地方，你TM来打我呀",
    14:"我读书少你别骗我",
    15:"你很有天赋，跟我学做菜吧",
    16:"不是说好做彼此的天使吗?",
    17:"仰望天空45度的忧伤",
    18:"画面太美我不敢看",
    19:"他说的好有道理我竟然无言以对",
    20:"why are you so diao?",
    21:"不要在意这些细节",
    22:"我和我的小伙伴们都惊呆了",
    23:"你TM在逗我？",
    24:"呵呵",
    25:"我是Crazy Bounce，我为自己代言",
    26:"土豪，我们做朋友吧！",
    27:"我这是要火的节奏啊",
    28:"弹~弹~弹~弹走鱼尾纹",
    29:"no zuo no die why you try",
    30:"no try no high give me five",
    31:"why try why high can't be shine",
    32:"you shine you try still go die",
    33:"小秘密：点两下就可以暂停哟~" ]