//
//  MyTestClass.h
//  HellowWorldObjC
//
//  Created by Hata on 2018/01/28.
//  Copyright © 2018年 th1209. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyTestClass : NSObject {
    @public
    NSString* message;
}

// Objective-Cでは、"-"がインスタンスメソッド、"+"がクラスメソッドを表す.
+(MyTestClass*) myTestClassWithMessage : (NSString*)str;

-(void) setMessage : (NSString*)str;
-(NSString*) getMessage;
-(void) printMessage;

@end


@interface SubMyTestClass : MyTestClass {
    NSString* message2;
}

// Objective-Cの場合、第二引数以降にはラベルを付ける.
// (取っ付きづらい...省略してもOKだが、慣例的に付ける場合が一般的なんだとか.)
+(SubMyTestClass*) subMyTestClassWithMessage : (NSString*)str
                                 andMessage2 : (NSString*)str2;

-(void) setMessage2 : (NSString*)str2;
-(NSString*) getMessage2;

@end
