package com.skilldistillery.data.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Kittieslisting {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private int generation;
	
	@Column(name="price_eth")
	private double priceEth;
	
	private String description;
	
	@Temporal(TemporalType.DATE)
	@Column(name="date_of_birth")
	private Date dateOfBirth;
	
	private String color;
	
	private double price;
	
	@Column(name="img_url")   
	private String imgUrl;
	
	private String onSale;
	
	@Column(name="crypto_id") 
	private int cryptoId;
	
	@Column(name="mother_id") 
	private int motherId;
	
	@Column(name="father_id") 
	private int fatherId;
	
	@Column(name="eye_colour")   
	private String eyeColour;
	
	@Override
	public String toString() {
		return "Kittieslisting [id=" + id + ", name=" + name + ", generation=" + generation + ", priceEth=" + priceEth
				+ ", description=" + description + ", dateOfBirth=" + dateOfBirth + ", color=" + color + ", price="
				+ price + ", imgUrl=" + imgUrl + ", onSale=" + onSale + ", cryptoId=" + cryptoId + ", motherId="
				+ motherId + ", fatherId=" + fatherId + ", eyeColour=" + eyeColour + ", pattern=" + pattern + ", fur="
				+ fur + ", mouth=" + mouth + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getGeneration() {
		return generation;
	}

	public void setGeneration(int generation) {
		this.generation = generation;
	}

	public double getPriceEth() {
		return priceEth;
	}

	public void setPriceEth(double priceEth) {
		this.priceEth = priceEth;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getOnSale() {
		return onSale;
	}

	public void setOnSale(String onSale) {
		this.onSale = onSale;
	}

	public int getCryptoId() {
		return cryptoId;
	}

	public void setCryptoId(int cryptoId) {
		this.cryptoId = cryptoId;
	}

	public int getMotherId() {
		return motherId;
	}

	public void setMotherId(int motherId) {
		this.motherId = motherId;
	}

	public int getFatherId() {
		return fatherId;
	}

	public void setFatherId(int fatherId) {
		this.fatherId = fatherId;
	}

	public String getEyeColour() {
		return eyeColour;
	}

	public void setEyeColour(String eyeColour) {
		this.eyeColour = eyeColour;
	}

	public String getPattern() {
		return pattern;
	}

	public void setPattern(String pattern) {
		this.pattern = pattern;
	}

	public String getFur() {
		return fur;
	}

	public void setFur(String fur) {
		this.fur = fur;
	}

	public String getMouth() {
		return mouth;
	}

	public void setMouth(String mouth) {
		this.mouth = mouth;
	}

	private String pattern;
	
	private String fur;
	
	private String mouth;    
		
}
