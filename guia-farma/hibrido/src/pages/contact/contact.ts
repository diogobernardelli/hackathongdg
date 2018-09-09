import { Component, Inject } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import { DOCUMENT } from '@angular/common';

@Component({
  selector: 'page-contact',
  templateUrl: 'contact.html', 
  providers: []
})
export class ContactPage {
  remedio = {};

  constructor(@Inject(DOCUMENT) private document: any,public navCtrl: NavController, public navParams:
    NavParams) {
    this.remedio = this.navParams.get('remedioSelecionado');
  }

  abacaxi(local: any): void {
    this.document.location.href = `https://www.google.com.br/maps/search/${local.nome}`;
  }
}