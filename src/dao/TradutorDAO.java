package dao;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import conexao.ConexaoSQL;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Expressao;
/**
 *
 * @author david
 */
public class TradutorDAO {
    
    public void insert(Expressao expres) {
        
        Connection con = ConexaoSQL.getConexao();
        PreparedStatement stmt = null;
        try {
            stmt = con.prepareStatement("INSERT INTO palavras (palavra,traducao) VALUES (?,?)");
           
            stmt.setString(1, expres.getExpressao());

            stmt.setString(2, expres.getTraducao());

            stmt.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace();

            //  throw new RuntimeException("Erro ao inserir informação no banco de dados");
        } finally {
            ConexaoSQL.fecharConexao(con, stmt);

        }
    }
    
    public List<Expressao> consulta(){
       Connection con = ConexaoSQL.getConexao();
       PreparedStatement stmt = null;
       
       ResultSet rs = null;
       
       
       List<Expressao> expressoes = new ArrayList<Expressao>();
       
       
       try{
           
           stmt = con.prepareStatement("select id, palavra, traducao from palavras where");
           rs = stmt.executeQuery();
           
           while (rs.next()){
               Expressao express =  new Expressao();
              
               express.setId(rs.getInt("id"));
               express.setExpressao(rs.getString("palavra"));
               express.setTraducao(rs.getString("traducao"));
              
               
               expressoes.add(express);
               
           }
           
           
       }catch (SQLException s){
           s.printStackTrace();
           
       }
       
        finally {
            ConexaoSQL.fecharConexao(con, stmt);

        }
       
      return expressoes;
   }
    
    public List<Expressao> select(String palavra){
       Connection con = ConexaoSQL.getConexao();
       PreparedStatement stmt = null;
       
       ResultSet rs = null;
       
       
       List<Expressao> expressoes = new ArrayList<Expressao>();
       
       
       try{
           
           stmt = con.prepareStatement("select id, palavra, traducao from "
                   + "palavras where palavra like '%"+palavra+"%'");
           rs = stmt.executeQuery();
           
           while (rs.next()){
               Expressao express =  new Expressao();
              
               express.setId(rs.getInt("id"));
               express.setExpressao(rs.getString("palavra"));
               express.setTraducao(rs.getString("traducao"));
              
               
               expressoes.add(express);
               
           }
           
           
       }catch (SQLException s){
           s.printStackTrace();
           
       }
       
        finally {
            ConexaoSQL.fecharConexao(con, stmt);

        }
       
      return expressoes;

       
   }
}
