/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conn.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import usuario.Usuario;

/**
 *
 * @author sa
 */
public class UsuarioDao {
    public Usuario find(String login,String senha) throws ClassNotFoundException {
        PreparedStatement st = null;
        Connection con = null;
        //List<usuario.Usuario> usuarios = new ArrayList<>();
      usuario.Usuario user= new usuario.Usuario();
        try {
            con = new ConnectionFactory().getConnection();
            ResultSet rs = null;
            st = con.prepareStatement("SELECT nome FROM tb_usuario WHERE login = ? and senha = ?");
            st.setString(1, login);
            st.setString(2, senha);            
            rs = st.executeQuery();
            if(rs.next())
            {
                user.setNome(rs.getString(1));
               // user.setSenha(rs.getString("senha"));
                //user.setLogin(rs.getString("login"));
               
            }
            
        } catch (SQLException ex) {
            System.err.println("Erro" + ex);

        } finally {
            if (st != null) {
                try {
                    st.close();
                } catch (Exception ex) {
                }
            }
        }
        return user;
    }
}
