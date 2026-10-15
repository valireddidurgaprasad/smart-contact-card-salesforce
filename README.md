# smart-contact-card-salesforce
# Smart Contact Card – Salesforce

A Salesforce-based digital professional profile that organizes contact information, skills, projects, and certifications in one place.

## Overview

The **Smart Contact Card** project uses Salesforce custom objects, Apex, and Lightning Web Components (LWC) to display professional profile information in a structured, user-friendly interface.

The goal is to make professional details easier to manage and present within Salesforce. QR-code-based profile sharing is a planned enhancement.

## Features

- **Professional Profile:** Display a person's name, job title, email, phone number, and introduction.
- **Skills:** Organize technical and professional skills.
- **Projects:** Present projects and related details.
- **Certifications:** Display earned certifications.
- **Salesforce Integration:** Retrieve profile data from Salesforce custom objects.
- **Lightning Web Component:** Show profile information in a reusable Salesforce UI component.
- **Planned enhancement:** QR-code generation to help users access a shareable profile URL.

## Technologies Used

- Salesforce Platform
- Apex
- Lightning Web Components (LWC)
- JavaScript
- HTML
- CSS
- Salesforce custom objects and fields
- Salesforce CLI
- Visual Studio Code
- Git and GitHub

## Project Structure

```text
smart-contact-card-salesforce/
├── smart-contact-card/
│   └── force-app/
│       └── main/
│           └── default/
│               ├── classes/
│               │   └── SmartContactCardController.cls
│               └── lwc/
│                   └── smartContactCard/
│                       ├── smartContactCard.html
│                       ├── smartContactCard.js
│                       └── smartContactCard.js-meta.xml
└── README.md
```

*Note: Update this structure if your actual project folders differ.*

## Salesforce Setup

### Prerequisites

- Access to a Salesforce Developer Org or another authorized Salesforce org
- Visual Studio Code
- Salesforce CLI
- Salesforce Extension Pack for VS Code

### Installation and Deployment

1. Clone the repository:

   ```bash
   git clone https://github.com/valireddidurgaprasad/smart-contact-card-salesforce.git
   ```

2. Open the project in VS Code and navigate to the Salesforce DX project folder:

   ```bash
   cd smart-contact-card-salesforce/smart-contact-card
   ```

3. Authenticate with your Salesforce org:

   ```bash
   sf org login web
   ```

4. Deploy the source to your org:

   ```bash
   sf project deploy start --source-dir force-app/main/default --target-org YOUR_ORG_ALIAS
   ```

   Replace `YOUR_ORG_ALIAS` with the alias of your authenticated Salesforce org.

5. In Salesforce Setup, open **Object Manager** and verify that the required custom objects and fields exist.

6. Open **Lightning App Builder**, edit the appropriate Professional Profile record page, add the Smart Contact Card component, and save and activate the page.

7. Open a Professional Profile record to verify the displayed details.

## Testing Checklist

- [ ] Profile details display correctly.
- [ ] Skills appear for the selected profile.
- [ ] Projects appear for the selected profile.
- [ ] Certifications appear for the selected profile.
- [ ] Empty related lists are handled gracefully.
- [ ] The component works on the intended Lightning record page.
- [ ] Access permissions allow authorized users to view the required data.
- [ ] QR code opens the intended profile URL (after implementation).

## Screenshots

Add screenshots of the deployed Salesforce component to the `screenshots/` folder.

Suggested files:

- `screenshots/smart-contact-card.png` — main profile card
- `screenshots/skills-projects-certifications.png` — related information

Once uploaded, display them here:

```markdown
![Smart Contact Card](screenshots/smart-contact-card.png)

![Skills, Projects, and Certifications](screenshots/skills-projects-certifications.png)
```

## Future Enhancements

- Generate a QR code for a shareable profile URL.
- Add a copy-profile-link action.
- Improve responsive styling for mobile screens.
- Add validation and clearer error states.
- Add automated tests for the Apex controller and Lightning Web Component.

## Learning Outcomes

This project provides practical experience with Salesforce data modeling, Apex, Lightning Web Components, Salesforce deployment, and Git-based version control.

## Author

**Valireddi Durga Prasad**

GitHub: [@valireddidurgaprasad](https://github.com/valireddidurgaprasad)

---

*Built as a Salesforce development project to explore digital professional profiles and reusable Lightning UI components.*
