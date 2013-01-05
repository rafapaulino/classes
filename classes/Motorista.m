//
//  Motorista.m
//  classes
//
//  Created by Rafael Brigagão Paulino on 20/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import "Motorista.h"

@implementation Motorista

@synthesize cnh = _cnh;

- (void) dirigirCarro
{
    //implementa o valor de cansaco
    self.cansaco++;
    
    NSLog(@"Motorista %@ dirigiu o carro e agora esta cansado em %d", self.nome, self.cansaco);
}


@end
