/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import dao.TradutorDAO;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author david
 */
public class ExpressaoBO {
    
    public List<Expressao> consulta(){

       TradutorDAO dao = new TradutorDAO();
       
       List<Expressao> expressoes = new ArrayList<Expressao>();
       
       try{
        
           expressoes =  dao.select();
        
        }catch(Exception e){
            throw new RuntimeException("Erro ao inserir recuperar no banco de dados");
        }

       return expressoes;        
    }
    
    public void incluir(Expressao expres){
        
        TradutorDAO dao = new TradutorDAO();
        
        try{
        
            dao.insert(expres);
        
        }catch(Exception e){
            throw new RuntimeException("Erro ao inserir informação no banco de dados");
        }
    }
}
