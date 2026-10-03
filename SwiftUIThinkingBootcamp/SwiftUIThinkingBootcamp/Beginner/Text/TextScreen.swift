//
//  TextScreen.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Gabriel Merenfeld on 03/10/26.
//

/* LINK DO VÍDEO:
https://www.youtube.com/watch?v=RKfkG01x79w&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO
*/

import SwiftUI

struct TextScreen: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Olá mundo!".uppercased())
                .font(.title2)
                .bold()
                .foregroundStyle(.blue)
                //.underline()
                //.underline(true, color: .green)
                //.italic()
            
            Text("Deadlock is an upcoming third-person multiplayer online battle arena (MOBA) and hero shooter game developed by Valve")
                .multilineTextAlignment(.leading)
        }
    }
}

struct TextScreen_Previews: PreviewProvider {
    static var previews: some View {
        TextScreen()
    }
}


/*
 .lowercased(): Coloca todos os caracteres da String em caixa baixa/minúsculo
 .uppercased(): Coloca todos os caracteres String em caixa alta/maiúsculo
 .capitalized: Coloca o primeiro caracter de cada palavra em maiúsculo, útil para nome de cidades, pessoas, etc..
 
 
 Modificadores:
    .font: Estilização default de textos da Apple.
        .largeTitle: 34px
        .title: 28px
        .title2: 22px
        .title3: 20px
        .headline: 17px + semibold
        .subheadline: 15px
        .body: 17px (default)
        .callout: 16px
        .footnote: 13px
        .caption: 12px
        .caption2: 11px
 
 
    .font(.system(size: 12, weight: .bold, design: .serif)): Estilizamos de forma manual.
        - O design altera o estilo a família de fonte para serifada, não serifada(padrão) e monoespaçadas
 
        - Quando definimos um tamanho na mão, fazemos com que seja um tamanho fixo. Quando o usuário aumentar o tamanho da letra nas configurações do sistema, consequentemente as fontes já pré-definidas vão se adaptar automaticamente, diferente do nosso .system(size: 12), que vai permanecer no mesmo tamanho.
 
 
    .fontWeight: Peso da fonte
        .bold: Forma mais enxuta de colocar o texto em bold ao invés de: .fontWeight(.bold)
 
 
    .foregroundStyle: Muda a cor do texto.
 
 
    .underline(): Sublinha o texto
        .underline(true, color: .blue): Mudamos a cor da linha
 
 
    .italic(): Texto em itálico
 
 
    .multilineTextAlignment: É a forma com que alinharemos o texto.
        - .center: Centro (default)
        - .leading: Esquerda
        - .trailing: Direita
 
 
    .baselineOffSet: Define o espaçamento entre as linhas(Line Height).
        OBS: Esse modificador precisa ser declarado antes do .multilineTextAlignment, caso você queira usar ele também.
 
    
    .kerning: Define o espaçamento entre os caracteres(Letter Spacing).
 
 
    .frame(width: 200, height: 100): Especifico a dimenção que o texto vai ocupar na tela. Também podemos definir o alinhamento, que nem no multilineTextAlignment.
*/
