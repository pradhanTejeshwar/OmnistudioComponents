import { LightningElement, wire } from 'lwc';
import getName from '@salesforce/apex/UserInformation.getName';
import getTiming from '@salesforce/apex/UserInformation.getTiming';
import getExpiryDays from '@salesforce/apex/UserInformation.getExpiryDays';
export default class WelcomeEU extends LightningElement {

@wire(getName)
getName;

@wire(getTiming)
getTiming;

@wire(getExpiryDays)
getExpiryDays


}