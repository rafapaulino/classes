//
//  Pessoa.m
//  classes
//
//  Created by Rafael Brigagão Paulino on 20/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa

@synthesize nome = _nome;
@synthesize cansaco = _cansaco;
//toda a vez que delcaramos uma @property e @synthesize, o que o xcode da um get no atributo e um set colocando o _nome = nome


//construtores
//toda a classes que herdar de NSObject tem este etodo pre-definido. Usamos ele junto com o alloc para criar o objeto
- (id)init
{
    //mesmo que este metodo nao apareca no .m das classes, podemos reescreve-lo para setar os atributos e properties da classes que estamos manipulando
    
    //sempre comecamos a contrucao de um objeto chamando o construtor da superclasses na linha de heranca, para garantir que este objeto herde todos os atrbutos e metodos
    self = [super init];
    
    //pode ser que o construtor super init tenha falhado por isso fazemos o teste abaixo para ver se self (objeto que estamos criando neste momento) nao esta nulo ainda
    if (self != nil)
    {
        //inicializacao de atributos e customizacao do construtor
        _cansaco = 10;
        
    }
    return self;
}

//construtor
- (id) initWithnome:(NSString *)nomeInicial
{
    self = [super init];
    
    if(self != nil)
    {
        _nome = nomeInicial;
        _cansaco = 10;
    }
    return self;
}

- (id) initWithnome:(NSString *)nomeInicial initWithidade:(int)idadeInicial
{
    self = [super init];
    
    if(self != nil)
    {
        //assim, customizamos casa objeto no momento de sua construcao
        _nome = nomeInicial;
        _cansaco = 5;
        altura = 0;
        _idade = idadeInicial;
    }
    return self;
}

//fim construtores


- (void) imprimirTexto
{
    NSLog(@"Pessoa %@ imprimiu este texto", _nome);
}

- (void) imprimirNumero:(int)numeroDesejado
{
    NSLog(@"Pessoa %@ imprimiu o numero %d", _nome, numeroDesejado);
}

- (int) somarNumero:(int)x comOutroNumero:(int)y
{
    int resultado = x + y;
    return resultado; 
}

- (float) somarN1:(float)a somarN2:(float)b dividir:(float)c
{
    int resultado = (a + b)/c;
    return resultado;
}

- (void) multiplicar1:(id)c multiplicar2:(id)d
{
    
}


@end
