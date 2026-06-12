import { enableProdMode } from '@angular/core';
import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';

import { AppModule } from './app/app.module';
import { environment } from './environments/environment';


export function getBaseUrl(){
  return "http://44.202.110.157:3004/api"
}

export function getBaseUrlImage(){
  return "http://44.202.110.157:3004/"
}

const providers = [
  { provide: 'BASE_URL', useFactory: getBaseUrl, deps: [] },
  { provide: 'BASE_URL_IMAGE', useFactory: getBaseUrlImage, deps: [] },
]

if (environment.production) {
  enableProdMode();
}

platformBrowserDynamic(providers).bootstrapModule(AppModule)
  .catch(err => console.error(err));
