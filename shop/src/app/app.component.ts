import { Component } from '@angular/core';
import { Product } from './products';
import { products } from './products';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  products: Product[] = products;
  selectedProduct: Product | undefined;
  quantity: number = 0;
  cartItems: CartItem[] = []; 
  isCheckoutVisible: boolean = false; // Define isCheckoutVisible property here
  
  toggleCheckoutForm() {
    this.isCheckoutVisible = !this.isCheckoutVisible;
  }

  addToCart(product: Product) {
    const existingItem = this.cartItems.find(item => item.product.id === product.id);

    if (existingItem) {
      existingItem.quantity++;
    } else {
      this.cartItems.push({ product, quantity: 1 });
    }
  }

  removeFromCart(index: number) {
    this.cartItems.splice(index, 1);
  }

  calculateTotal(): number {
    return this.cartItems.reduce((total, item) => total + item.product.price * item.quantity, 0);
  }

  showModal: boolean = false;

  openModal() {
    this.showModal = true;
  }

  closeModal() {
    this.showModal = false;
  }

  checkout() {
    // Show the checkout form by setting isCheckoutVisible to true
    this.isCheckoutVisible = true;
  }
  selectProduct(product: Product) {
    this.selectedProduct = product;
    this.isCheckoutVisible = true; // Show the checkout form
  }
  cancelPurchase() {
    this.selectedProduct = undefined;
    this.isCheckoutVisible = false; // Hide the checkout form
  }
  completePurchase() {
    // You can perform any necessary actions here, such as sending the data to a server.

    // After a successful purchase, show the success message and hide the checkout form
    this.showModal = true;
    this.isCheckoutVisible = false;
  }
}

interface CartItem {
  product: Product;
  quantity: number;
}
