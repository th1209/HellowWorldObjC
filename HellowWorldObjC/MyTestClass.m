//
//  MyTestClass.m
//  HellowWorldObjC
//
//  Created by Hata on 2018/01/28.
//  Copyright © 2018年 th1209. All rights reserved.
//

#import "MyTestClass.h"

@implementation MyTestClass

// プロパティを使う場合、クラス定義側で、@synthesizeコンパイラディレクティブの記載が必要.
@synthesize message;

-(void) printMessage {
    // Objective-C式の文字列の場合、頭に"@"を付ける.
    // フォーマット指定子"%@"は、インスタンスを表示する際の指定子らしい.
    NSLog(@"%@", message);
}

// Objective-Cの慣例上、コンビニエンスコンストラクタと呼ばれるメソッド.
// (自クラスに持たせるファクトリメソッドのこと)
+(MyTestClass*) myTestClassWithMessage : (NSString*) str {
    MyTestClass* obj;
    // クラスメソッドでインスタンスを生成する場合、ARC側で参照カウンタが追いきれないため、
    // "@autoreleasepool"と記載して、明示的にリファレンスカウンタに乗せる必要があるらしい.
    @autoreleasepool {
        // "self"キーワードは、クラスメソッドの場合そのクラス自身を示す.
        obj = [[self alloc] init];
    }

    [obj setMessage:str];
    return obj;
}

@end


@implementation SubMyTestClass

+(SubMyTestClass*) subMyTestClassWithMessage : (NSString*)str
                                 andMessage2 : (NSString*)str2 {
    SubMyTestClass* obj = [super myTestClassWithMessage:str];
    [obj setMessage2:str2];
    return obj;
}

// メソッドのオーバーライドの場合、定義だけ書けばよく、宣言は省略する.
-(void) printMessage {
    NSLog(@"%@ %@", message, message2);
}

@end
