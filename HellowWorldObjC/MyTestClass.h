//
//  MyTestClass.h
//  HellowWorldObjC
//
//  Created by Hata on 2018/01/28.
//  Copyright © 2018年 th1209. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyTestClass : NSObject {
    NSString* message;
}

@property (retain, getter=getMessage, setter=setMessage:) NSString* message;

// Objective-Cでは、"-"がインスタンスメソッド、"+"がクラスメソッドを表す.
+(MyTestClass*) myTestClassWithMessage : (NSString*)str;

-(void) printMessage;

@end


@interface SubMyTestClass : MyTestClass {
    NSString* message2;
}

@property (retain, getter=getMessage2, setter=setMessage2:) NSString* message2;

// Objective-Cの場合、第二引数以降にはラベルを付ける.
// (取っ付きづらい...省略してもOKだが、慣例的に付ける場合が一般的なんだとか.)
+(SubMyTestClass*) subMyTestClassWithMessage : (NSString*)str
                                 andMessage2 : (NSString*)str2;

@end
