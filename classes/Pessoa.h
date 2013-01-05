//
//  Pessoa.h
//  classes
//
//  Created by Rafael Brigagão Paulino on 20/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pessoa : NSObject
{
    //atributos da classe privados
    
    //NSString *nome; //ponteiro apontando para uma string (objetos complexos pedem ponteiro, definido com o uso de *)
    //int idade;
    float altura;
    //int cansaco;
    
}
//atributos fora das chaves sao public
//toda vez que cria uma property no .h e necessario criar um sinthesize no h
//ser atomico e divisivel
//nonatomic - varios processos acessando o mesmo atributo quase ao mesmo tempo
//assign nao tem ponteiro
//reference counting
//toda referencia e strong por padrao so e weak quando vc informa
//todo strong incrementa 1 na memoria, ou seja p4 e p5 = 2
//no weak tudo fica 1, ou seja p4 e p5 = 1
@property (nonatomic, strong) NSString *nome;
@property (nonatomic, assign) int cansaco;
@property (nonatomic, assign) int idade;
@property (nonatomic, weak) NSString *sobrenome;



//metodos
//void imprimirTexto(); no objectiveC quando ometodo nao tem parametros ele nao coloca os parenteses
- (void) imprimirTexto;

//metodo passando parametros - evitar colocar _ nos nomes dos metodos
- (void) imprimirNumero:(int)numeroDesejado;

//somando valores
- (int) somarNumero:(int)x comOutroNumero:(int)y;

//novo metodo
- (float) somarN1:(float)a somarN2:(float)b dividir:(float)c;

//tipo generico sem tipagem
- (void) multiplicar1:(id)c multiplicar2:(id)d;

//contrutor padrao
- (id) init;

//novo contrutor com parametros
- (id) initWithnome:(NSString*)nomeInicial;

- (id) initWithnome:(NSString*)nomeInicial initWithidade:(int)idadeInicial;

@end
