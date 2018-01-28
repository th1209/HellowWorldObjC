    //
//  main.m
//  HellowWorldObjC
//
//  Created by Hata on 2018/01/28.
//  Copyright © 2018年 th1209. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "MyTestClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSLog(@"Hello, World!");

        /**
         * オブジェクトを使ってみる.
         */
        // 1.メモリの割り当て.
        //MyTestClass* obj = [MyTestClass alloc];
        // 2.初期化.
        //obj = [obj init];
        // 3.AutomaticReferenceCountingモードが無効な場合、以下1行が必要.
        //obj = [obj autorelease];

        // 初期化 ~ メソッド呼び出しまでをまとめて.
        //MyTestClass* obj = [[MyTestClass alloc] init];
        //[obj setMessage:@"Hello, Objective-C !"];
        //[obj printMessage];

        // コンビニエンスコンストラクタによる初期化.
        MyTestClass* obj = [MyTestClass myTestClassWithMessage:@"Hello, Objective-C !"];
        [obj printMessage];
        
        // クラスインスタンスの場合、汎用な型"id"に代入することができる(動的な型付けになる点に注意).
        //id obj = [MyTestClass myTestClassWithMessage:@"Hello, Objective-C !"];
        //[obj printMessage];
        
        // サブクラスを使ってみる.
        //id subObj = [SubMyTestClass subMyTestClassWithMessage:@"Hello" andMessage2:@",SubClass !"];
        //[subObj printMessage];
    }
    return 0;
}
