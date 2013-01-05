//
//  AppDelegate.m
//  classes
//
//  Created by Rafael Brigagão Paulino on 20/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import "AppDelegate.h"
#import "Pessoa.h"
#import "Motorista.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    //criando um ponteiro para essa pessoa/ equivalente a new pessoa
    Pessoa * p1;
    //construtor alloc/init
    //metodo que vai alocar o objeto na memoria e retornar o endereco para ser alocado na variavel ponteiro
    
    p1 = [[Pessoa alloc] init]; //alloc reserva o espaco e init inicia o objeto
    
    NSLog(@"cansaco inicial: %d", p1.cansaco);
    
    //setando os atributos do objeto
    p1.nome = @"Rafael";
    
    //enviando a mensagem ao objeto criado apontado por p1
    [p1 imprimirTexto];
    
    p1.nome = @"Eduardo";
    [p1 imprimirTexto];
    
    
    Pessoa * p2;
    p2 = [[Pessoa alloc] init];
    p2.nome = @"Sem nome";
    [p2 imprimirTexto];
    
    [p1 imprimirNumero:100];
    
    [p2 imprimirNumero:2000];
    
    int resultadoSoma = [p1 somarNumero:2 comOutroNumero:4];
    NSLog(@"Resultado da soma %d", resultadoSoma);
    
    float rs2 = [p1 somarN1:34 somarN2:41 dividir:25];
    NSLog(@"Resultado soma e divisao %.2f", rs2);
    
    Motorista * m1;
    m1 = [[Motorista alloc] init];
    m1.nome = @"jose";
    m1.cansaco = 1;
    
    [m1 dirigirCarro];
    [m1 dirigirCarro];
    
    [m1 somarN1:2 somarN2:4 dividir:6]; //motoristasabe somar pq herdou o metodo da classe pessoa
    
    [p2 setNome:@"Maria"]; //e a mesma coisa que p2.nome = @"Maria";
    
    //criar uma pessoa usando  construtor com parametros que criamos
    Pessoa *p3 = [[Pessoa alloc] initWithnome:@"Francisco"];
    
    NSLog(@"Nome: %@ - cansaco: %d", p3.nome, p3.cansaco);
    
    
    Pessoa *p4 = [[Pessoa alloc] initWithnome:@"Joao" initWithidade:10];
    
    NSLog(@"Nome: %@ - idade: %d", p4.nome, p4.idade);
    
    //podemos ter 2 ponteiros para 2 objetos
    Pessoa *p5 = p4;
    
    p5.idade = 61;
    
    NSLog(@"Nome: %@ - idade: %d", p4.nome, p4.idade);
    NSLog(@"Nome: %@ - idade: %d", p5.nome, p5.idade);
    
    
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
