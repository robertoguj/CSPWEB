package com.cspecem.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="TB_EQUIPAMENTO")
public class Equipamento implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name="EQUIPAMENTO_ID")
	private Integer id;
	
	@OneToOne(cascade = CascadeType.ALL, optional=true, fetch = FetchType.EAGER)
	@JoinColumn(name="PRODUTO_ID")
	private Produto produto;
	
	@Column(name="NUMERO_SERIE", nullable=false)
	private String numeroSerie;
	
	@Column(name="AREA", nullable=false)
	private String area;
	
	@Column(name="SUB_AREA", nullable=false)
	private String subarea;
	
	@Column(name="LOCAL_INSTALACAO", nullable=false)
	private String local;
	
	@Column(name="TAG")
	private String tag;
	
	@Column(name="RACK_ID")
	private String rack;
	
	@Enumerated(EnumType.STRING)
	@Column(name="STATUS_GARANTIA", nullable=false)
	private StatusGarantia statusGarantia;
	
	@Temporal(TemporalType.DATE)
	@Column(name="DATA_GARANTIA", nullable=false)
	private Date dataGarantia;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Produto getProduto() {
		return produto;
	}

	public void setProduto(Produto produto) {
		this.produto = produto;
	}

	public String getNumeroSerie() {
		return numeroSerie;
	}

	public void setNumeroSerie(String numeroSerie) {
		this.numeroSerie = numeroSerie;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getSubarea() {
		return subarea;
	}

	public void setSubarea(String subarea) {
		this.subarea = subarea;
	}
	
	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getRack() {
		return rack;
	}

	public void setRack(String rack) {
		this.rack = rack;
	}

	public StatusGarantia getStatusGarantia() {
		return statusGarantia;
	}

	public void setStatusGarantia(StatusGarantia statusGarantia) {
		this.statusGarantia = statusGarantia;
	}

	public Date getDataGarantia() {
		return dataGarantia;
	}

	public void setDataGarantia(Date dataGarantia) {
		this.dataGarantia = dataGarantia;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((area == null) ? 0 : area.hashCode());
		result = prime * result + ((dataGarantia == null) ? 0 : dataGarantia.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((local == null) ? 0 : local.hashCode());
		result = prime * result + ((numeroSerie == null) ? 0 : numeroSerie.hashCode());
		result = prime * result + ((produto == null) ? 0 : produto.hashCode());
		result = prime * result + ((rack == null) ? 0 : rack.hashCode());
		result = prime * result + ((statusGarantia == null) ? 0 : statusGarantia.hashCode());
		result = prime * result + ((subarea == null) ? 0 : subarea.hashCode());
		result = prime * result + ((tag == null) ? 0 : tag.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Equipamento other = (Equipamento) obj;
		if (area == null) {
			if (other.area != null)
				return false;
		} else if (!area.equals(other.area))
			return false;
		if (dataGarantia == null) {
			if (other.dataGarantia != null)
				return false;
		} else if (!dataGarantia.equals(other.dataGarantia))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (local == null) {
			if (other.local != null)
				return false;
		} else if (!local.equals(other.local))
			return false;
		if (numeroSerie == null) {
			if (other.numeroSerie != null)
				return false;
		} else if (!numeroSerie.equals(other.numeroSerie))
			return false;
		if (produto == null) {
			if (other.produto != null)
				return false;
		} else if (!produto.equals(other.produto))
			return false;
		if (rack == null) {
			if (other.rack != null)
				return false;
		} else if (!rack.equals(other.rack))
			return false;
		if (statusGarantia != other.statusGarantia)
			return false;
		if (subarea == null) {
			if (other.subarea != null)
				return false;
		} else if (!subarea.equals(other.subarea))
			return false;
		if (tag == null) {
			if (other.tag != null)
				return false;
		} else if (!tag.equals(other.tag))
			return false;
		return true;
	}
	
	
}
