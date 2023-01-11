package com.shopforhome.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopforhome.entity.Cart;
import com.shopforhome.entity.Customer;
import com.shopforhome.entity.Product;
import com.shopforhome.repository.CartRepository;



@Service
public class CartService {

	@Autowired private CartRepository repo;
	@Autowired private CustomerService cservice;
	
	public void save(Cart wl) {
		repo.save(wl);
	}
	
	public List<Cart> findByuserid(int id){
		return repo.findByCustomer(cservice.findById(id));
	}
	
	public void updateQty(int cartid,int qty) {
		Cart c=repo.findById(cartid).get();
		c.setQty(qty);
		repo.save(c);
	}
	
	public void deleteItem(int id) {
		repo.deleteById(id);
	}
	
	public boolean checkexist(Customer customer,Product product) {
		return repo.findByCustomerAndProduct(customer, product)!=null;
	}
	
	public void clearCart(Customer cust) {
		//repo.deleteByCustomer(cust);
		repo.deleteAll(repo.findByCustomer(cust));
	}
	
}