// src/app/app.module.ts

import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms'; // Import FormsModule
import { RouterModule, Routes } from '@angular/router'; // Import RouterModule and Routes
import { AppComponent } from './app.component';

const routes: Routes = [
  // Define your routes here (if needed)
];

@NgModule({
  declarations: [AppComponent],
  imports: [BrowserModule, FormsModule, RouterModule.forRoot(routes)], // Add FormsModule and configure routing
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule {}
