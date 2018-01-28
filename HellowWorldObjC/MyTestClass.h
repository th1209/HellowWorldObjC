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

-(void)setMessage:(NSString*) str;
-(NSString*)getMessage;
-(void)printMessage;

@end
