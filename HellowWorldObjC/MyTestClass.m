//
//  MyTestClass.m
//  HellowWorldObjC
//
//  Created by Hata on 2018/01/28.
//  Copyright © 2018年 th1209. All rights reserved.
//

#import "MyTestClass.h"

@implementation MyTestClass

// 仮引数の書き方が、何だか取っ付きづらい...
-(void)setMessage:(NSString*) str {
    message = str;
}

-(NSString*)getMessage {
    return message;
}

-(void)printMessage {
    // Objective-C式の文字列の場合、頭に"@"を付ける.
    // フォーマット指定子"%@"は、インスタンスを表示する際の指定子らしい.
    NSLog(@"%@", message);
}

@end
