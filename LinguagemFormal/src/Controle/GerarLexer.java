/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controle;

import java.io.File;

/**
 *
 * @author casa
 */
public class GerarLexer {
    
    public static void Gerar(String path){
        File arquivo = new File(path);
        jflex.Main.generate(arquivo);
    }
    
    public static void main(String[] args){
        //localiza o arquivo ""
        String path = "/home/casa/NetBeansProjects/lf/LinguagemFormal/src/Controle/Lexer.flex";
        
        //chamda do metodo "geraLexer"
        Gerar(path);
    }
    
}
