/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package usuario;

/**
 *
 * @author sa
 */
public class Usuario {
    private int id;
    private String nome;
    private String senha;
    private String login;

    public Usuario() {
    }
    
    public Usuario(String nome, String senha, String login) {
       
        this.nome = nome;
        this.senha = senha;
        this.login = login;
    }

    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public String getSenha() {
        return senha;
    }

    public String getLogin() {
        return login;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public void setLogin(String login) {
        this.login = login;
    }
    
    
    
}
