////////////////////////////////////////////////////////////////////////////////
//
//  MOD PRODUCTIONS
//  Copyright 2013 Mod Productions
//  All Rights Reserved.
//
//  NOTICE: Mod Productions permit you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

#import "ExceptionTestAssembly.h"
#import "TyphoonDefinition.h"
#import "TyphoonDefinition+BlockAssembly.h"
#import "TyphoonInitializer.h"


@implementation ExceptionTestAssembly

- (id)anotherServiceUrl
{
    return [TyphoonDefinition withClass:[NSURL class] initialization:^(TyphoonInitializer* initializer)
    {
        initializer.selector = @selector(URLWithString:);
        [initializer injectParameterNamed:@"string" withValueAsText:@"http://dev.foobar.com/service/" requiredTypeOrNil:nil];
    }];
}

- (id)aBlaString
{
    return [TyphoonDefinition withClass:[NSString class] initialization:^(TyphoonInitializer* initializer)
    {
        initializer.selector = @selector(stringWithBlaBla:);
        [initializer injectParameterNamed:@"specification" withValueAsText:@"blue" requiredTypeOrNil:nil];
    }];
}


@end