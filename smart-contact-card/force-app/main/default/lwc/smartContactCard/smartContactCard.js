
import { LightningElement, api, wire } from 'lwc';
import getProfile from '@salesforce/apex/SmartContactCardController.getProfile';
import getSkills from '@salesforce/apex/SmartContactCardController.getSkills';
import getProjects from '@salesforce/apex/SmartContactCardController.getProjects';
import getCertifications from '@salesforce/apex/SmartContactCardController.getCertifications';

export default class SmartContactCard extends LightningElement {
    @api recordId;

    profile;
    skills = [];
    projects = [];
    certifications = [];
    error;

    @wire(getProfile, { profileId: '$recordId' })
    wiredProfile({ data, error }) {
        if (data) {
            this.profile = data;
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.profile = undefined;
        }
    }

    @wire(getSkills, { profileId: '$recordId' })
    wiredSkills({ data, error }) {
        if (data) {
            this.skills = data;
        } else if (error) {
            this.error = error;
        }
    }

    @wire(getProjects, { profileId: '$recordId' })
    wiredProjects({ data, error }) {
        if (data) {
            this.projects = data;
        } else if (error) {
            this.error = error;
        }
    }

    @wire(getCertifications, { profileId: '$recordId' })
    wiredCertifications({ data, error }) {
        if (data) {
            this.certifications = data;
        } else if (error) {
            this.error = error;
        }
    }
}
