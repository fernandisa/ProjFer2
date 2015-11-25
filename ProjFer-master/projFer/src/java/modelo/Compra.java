/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Aluno
 */
@Entity
@Table(name = "compra")
@NamedQueries({
    @NamedQuery(name = "Compra.findAll", query = "SELECT c FROM Compra c")})
public class Compra implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idcompra")
    private Long idcompra;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "precovenda")
    private BigDecimal precovenda;
    @Basic(optional = false)
    @Column(name = "datahora")
    @Temporal(TemporalType.DATE)
    private Date datahora;
    @Basic(optional = false)
    @Column(name = "qntd")
    private int qntd;
    @JoinColumn(name = "cpf", referencedColumnName = "cpf")
    @ManyToOne
    private Cliente cpf;
    @JoinColumn(name = "isbn", referencedColumnName = "isbn")
    @ManyToOne
    private Livro isbn;

    public Compra() {
    }

    public Compra(Long idcompra) {
        this.idcompra = idcompra;
    }

    public Compra(Long idcompra, Date datahora, int qntd) {
        this.idcompra = idcompra;
        this.datahora = datahora;
        this.qntd = qntd;
    }

    public Long getIdcompra() {
        return idcompra;
    }

    public void setIdcompra(Long idcompra) {
        this.idcompra = idcompra;
    }

    public BigDecimal getPrecovenda() {
        return precovenda;
    }

    public void setPrecovenda(BigDecimal precovenda) {
        this.precovenda = precovenda;
    }

    public Date getDatahora() {
        return datahora;
    }

    public void setDatahora(Date datahora) {
        this.datahora = datahora;
    }

    public int getQntd() {
        return qntd;
    }

    public void setQntd(int qntd) {
        this.qntd = qntd;
    }

    public Cliente getCpf() {
        return cpf;
    }

    public void setCpf(Cliente cpf) {
        this.cpf = cpf;
    }

    public Livro getIsbn() {
        return isbn;
    }

    public void setIsbn(Livro isbn) {
        this.isbn = isbn;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idcompra != null ? idcompra.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Compra)) {
            return false;
        }
        Compra other = (Compra) object;
        if ((this.idcompra == null && other.idcompra != null) || (this.idcompra != null && !this.idcompra.equals(other.idcompra))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Compra[ idcompra=" + idcompra + " ]";
    }
    
}
