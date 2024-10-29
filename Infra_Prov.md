### Explanation of the Onboarding Flow

#### Pre-requisites: Basic Onboarding

GPID: Begin by obtaining a Global Personnel ID (GPID) for access purposes.

Basic Accesses (myIDM): Ensure you have the necessary basic accesses through the MyIDM portal.

Secondary ID Creation: Create a secondary ID for additional access levels.

Reset Password for Secondary ID: Reset the password for the newly created secondary ID to ensure security and accessibility.

#### Developer Onboarding

AD Group Creation and Membership: Create Active Directory (AD) groups and assign memberships based on the development team's needs.

Business Application / Service CI Request: Submit a request for the necessary business applications or Service Configuration Item (CI) to support development.

Cloud Onboarding Request: Initiate a cloud onboarding request to ensure that the necessary cloud resources are available for development.

Resource Group (RG) Creation: Create a Resource Group (RG) in the cloud environment to organize and manage related resources.

#### Use Case Onboarding

RAI Assessment: Conduct a Risk Assessment and Impact (RAI) assessment to identify potential risks associated with the use case.

GenAI CoP: Engage with the Generative AI Community of Practice (GenAI CoP) for guidance and best practices.

TAC Review: Submit the use case for review by the Technical Architecture Committee (TAC) to ensure alignment with architectural standards.

CSA Approval: Obtain approval from the Cloud Solutions Architect (CSA) for the proposed solution architecture.

ISA Creation/Approval: Create and secure approval for the Information Security Assessment (ISA) to address security considerations.

ADO Creation: Set up the Azure DevOps (ADO) project to facilitate collaboration and project management among development teams.

AD Group Creation and Membership: Revisit the creation of AD groups and membership as needed to include the use case team.

Business Application / Service CI Request: Again, submit requests for business applications or Service CIs specific to the use case.

Cloud Onboarding Request: Reinitiate the cloud onboarding request, if necessary, for the use case-specific resources.

Resource Group (RG) Creation: Create a new Resource Group if additional resources are required for the use case.

PepGenX Services: Onboard any PepGenX services relevant to the use case to leverage their capabilities.

OKTA Onboarding: Integrate with OKTA for identity management and single sign-on capabilities.

APIGEE Onboarding: Onboard with APIGEE for API management and connectivity needs.

OneReach Onboarding: Finally, onboard with OneReach for conversati

### Task: Architecture Alignment

Task_ID: 1

#### Sub_Task: Conceptual Architecture preparation

Sub_Task_ID: 1.1

Task Purpose: Your architecture diagram should show how the components of your solution fit together and how they relate to each other for functionality.

Prerequisites and Requirements: Use case onboarding – Form 1, Form 2

Step-by-Step Guide:

Step 1: Define Business Goals and Requirements

Identify the primary objectives the architecture should support.

Step 2: Identify Core Components

List the main systems, data sources, and services needed for the architecture.

Step 3: Define Architecture Layers

Organize the architecture into layers (e.g., presentation, application, data, infrastructure).

Step 4: Map Component Interactions

Outline key connections and data flows between components.

Step 5: Create a Visual Diagram

Develop a high-level diagram showing components and their relationships.

Step 6: Document and Finalize

Provide brief descriptions for each component and finalize the conceptual architecture document.

#### Sub_Task: Physical Architecture creation

Sub_Task_ID: 1.2

Task Purpose: It serves the purpose of communicating the system under consideration’s infrastructure to various stakeholders (such as enterprise architect, infrastructure/cloud architect, data architect, security architect, vendors, etc.).

Prerequisites and Requirements: Enterprise Architect alignment for GenAI CoP Approval following with TAC alignment for physical architecture and logical architecture creation.

Step-by-Step Guide:

Step 1: Gather Requirements

Identify the necessary components, locations, and key user needs.

Step 2: Identify Key Elements

Determine servers, storage, network devices, and endpoints required.

Step 3: Map Locations and Connections

Show where each component is located (data centers, cloud regions, offices) and how they connect (e.g., LAN, WAN, VPN).

Step 4: Add Redundancy

Include backups, load balancers, and any necessary disaster recovery setups.

Step 5: Create Diagram

Label each component clearly and use relevant legends and icons to mark the components,

#### Sub_Task: Logical Architecture creation

Sub_Task_ID: 1.3

Task Purpose: It is used to define the relationships between components, to trace functionality and to identify issues or opportunities for improvement or optimization. They also help to convey a system’s architecture to stakeholders, partners, and clients. The diagram will also need to include any external components that are used by the system.

Prerequisites and Requirements: Enterprise Architect alignment for GenAI CoP Approval following with TAC alignment for physical architecture and logical architecture creation.

Step-by-Step Guide:

Step 1: Define Requirements

Identify functional components and any specific user needs for the solution.

Step 2: Identify Core Logical Components

Break down the solution into layers like Presentation (UI), Application (services and APIs), and Data (databases, data storage).

Step 3: Map Interactions and Data Flow

Show how components interact and how data flows between them, without specifying hardware or physical locations.

Step 4: Add Security Layers

Represent security features, such as authentication, authorization, encryption, and secure zones.

Step 5: Label and Organize Layers

Clearly label each layer and component, showing the logical grouping (e.g., user layer, business layer, data layer).

Step 6: Create Diagram

Focus on logical roles and functions rather than physical setups, and add relevant legends and icons if applicable.

### Task: Approvals

Task_ID: 2

#### Sub_Task: RAI Excel Template

Sub_Task_ID: 2.1

Task purpose:

The "RAI System Classification" determines compliance obligations and the appropriate level of oversight required for the AI System.

The AI Business Owner is accountable for all risks within the AI initiative.

Prerequisites and Requirements:

Enterprise Architect alignment with Business and AI CSM Team from the use case sector.

Step-by-Step Guide

The Enterprise Architect, in collaboration with the AI Business Owner, is responsible for completing this form.

Once finalized, the Enterprise Architect must send it to the RAI Office: spa-responsibleai@pepsico.com

What happens next:

The RAI Office schedules a connect with the Enterprise Architect and the AI Business Owner to confirm the "RAI System Classification" and, where applicable, identify key risk areas for the use case that will be documented in the "RAI Risk Assessment".

#### Sub_Task: Vendor Due Diligence

Sub_Task_ID: 2.2

Task purpose:

The purpose of the vendor due diligence task is to evaluate the vendor’s reliability, compliance, and risk factors. This ensures that the vendor meets company standards and reduces potential risks before entering or continuing a business relationship.

Prerequisites and Requirements:

This form must be raised only by external vendors like Infosys, IBM, Harman, HTC, Tiger Analytics.

Step-by-Step Guide

 Open the Excel Sheet

Find and open the vendor due diligence template.

 Enter Vendor Details

Fill in basic information like vendor name, contact, and services.

  Complete Required Sections

Provide responses for financials, compliance, and security.

  Save and Submit

Review and send the completed sheet to the review team.

Sub_Task: Privacy Impact Assessment

Sub_Task_ID : 2.3

Task purpose:

Evaluate potential privacy risks associated with the project and propose mitigation strategies – Risk Assessment

Prerequisites and Requirements:

Access to PIA Template - Ensure you have the correct PIA form or access to the PIA webpage to fill out the assessment.

Completion of sub task RAI Excel Template ( Sub_Task_ID : 2.1)

Step-by-Step Guide

Step 1: Review Project Details

Understand the project scope and any unique aspects (e.g., differences between North American and European versions, as noted by the European team).

Step 2: Access the PIA Form

Open the provided PIA form or webpage.

Step 3: Complete Privacy-Related Questions

Answer each question on the form to outline how personal data will be collected, stored, used, and shared.

Step 4: Identify and Document Privacy Risks

Use the form to document any potential privacy risks associated with the project, such as data security or processing risks.

Step 5: Submit the PIA Form

Once all fields are complete, submit the form as instructed.

Optional:

If you need clarification or a walkthrough on specific parts of the PIA, reach out to schedule a call with the Privacy Operations Team for guidance.

#### Sub_Task: GenAI CoP Approval

Sub_Task_ID: 2.4

Task Purpose:

A Generative AI Committee of Practice (CoP) approval is essential in enterprise AI development as it ensures that projects align with strategic business goals while upholding ethical standards and managing potential risks. By enforcing data privacy and security compliance, the CoP safeguards sensitive information and maintains customer trust. Additionally, it sets standards and best practices across teams, promoting consistency and quality in AI solutions. CoP approval also optimizes resource allocation by prioritizing high-impact projects, fostering cross-functional collaboration, and supporting a unified, responsible approach to deploying generative AI within the organization.

Prerequisites and Requirements:

Completion of Sub_Task : Conceptual Architecture preparation (Sub_Task_ID : 1.1)

GenAI CoP Presentation template

Enterprise Architect (EA) alignment

Step-by-Step Guide:

Prepare an Executive Summary (Background, Challenges, Objectives, Recommendations, Due Diligence, Application Portfolio Impact of the use case (POC/Pilot/Prod solution))

Finalize the conceptual architecture diagram.

Needs to be presented to the CoP with a presentation template consisting of an Executive Summary and conceptual architecture diagram.

#### Sub_Task : TAC Approval

Sub_Task_ID : 2.5

Task purpose:

The purpose of this approval is to finalize the physical architecture and logical architecture created.

Prerequisites and Requirements:

Completion of Task: Architecture Alignment ( Task_ID : 1 )

Completion of Sub_Task : GenAI CoP Approval ( Sub_Task_ID : 2.4 )

Step-by-Step Guide:

Submit a request to the platform architecture team for alignment on the architecture.

They will evaluate the diagram and confirm both the physical and logical architecture.

#### Sub_Task : CSA approval of architecture

Sub_Task_ID : 2.6

Task purpose:

The purpose of this approval is to get confirmation from CSA team to proceed with the use case and start Cloud Onboarding.

Prerequisites and Requirements:

Completion of Task: Architecture Alignment ( Task_ID : 1 )

Completion of Sub_Task : GenAI CoP Approval ( Sub_Task_ID : 2.4 )

Completion of Sub_Task : TAC Approval ( Sub_Task_ID : 2.5 )

Step-by-Step Guide:

The TAC team will push it to CSA team to review the diagram and get approval via email.

Use this email as confirmation for other following sub tasks like ISA Approval  and task like Cloud Onboarding.

#### Sub_Task : ISA Approval (InfoSec Assessment)

Sub_Task_ID : 2.7

Task purpose:

The purpose of the Information Security Assessment (ISA) is to ensure that your business solutions adhere to PepsiCo's Information Security Policy and Standards from the beginning, ensuring security and compliance.

Prerequisites and Requirements:

Completion of Sub_Task : GenAI CoP Approval ( Sub_Task_ID : 2.4 )

Completion of Sub_Task : TAC Approval ( Sub_Task_ID : 2.5 )

Completion of Sub_Task: CSA Approval ( Sub_Task_ID : 2.6 )

Step-by-Step Guide:

Once the architecture alignment has been done with the TAC, either the technical lead or solution architect should mandatorily raise the ISA request on ServiceNow.

Refer to this documentation Information Security and ISSA integrated chatbot for detailed process.

You will need to follow other sub-tasks depending on the application type and data classification (Security Scan TPA, Security Exception, Issues).

ISA will be closed once all sub-tasks are completed and closed.

#### Sub_Task : Present architecture to ARB.

Sub_Task_ID : 2.7

Task purpose:

The purpose of this task is optional.

Prerequisites and Requirements:

Completion of Task: Architecture Alignment ( Task_ID : 1 )

Completion of entire Task : Approvals ( Task_ID : 2 )

Step-by-Step Guide:

Presenting to ARB is optional. When the solution is moving to production, follow this is necessary.

Reach out to your Enterprise architect and discuss further.

### Task: Project Onboarding

Task_ID: 3

#### Sub_Task: Onboarding in Clarity

Sub_Task_ID: 3.1

Task purpose:

The purpose of this task is to onboard the use case into Clarity Portal as project.

Prerequisites and Requirements:

Business alignment is sufficient. This has to be done by Business. In case they cannot , follow the steps.

Check the use case budget, if the budget of the use case is less than 50K , then register it as IDEA. If its greater than the budget, then its necessary to have IDEA created and converted to PROJECT.

Step-by-Step Guide:

Submit a request in My IDM for access to the Clarity portal, specifying the need for Project Admin level access.

Once the request is approved, log in to the portal and register the use case.

#### Sub_Task: Business CI Application

Sub_Task_ID: 3.2

Task purpose:

The purpose of this task is to create a business application of the new use case

Prerequisites and Requirements:

Business alignment is sufficient.

All the PoCs fall under single existing Business application CI. So it is not necessary to Create separate CI.

When the Use case moves to production , it is necessary to have Business application created

Step-by-Step Guide:

Raise an request in CMP portal for creating new business Application.

If the Use Case is GEN AI Initiative, then use this Business application name instead of creating new “ EIP AZURE KUBERNETES SERVICE”

### Task: Cloud Onboarding

Task_ID: 4

#### Sub_Task: Raise Request for AD Group

Sub_Task_ID: 4.1

Task purpose:

The purpose of this task is to onboard the use case into Clarity Portal as project.

Prerequisites and Requirements:

Business alignment is sufficient. This has to be done by Business. In case they cannot, follow the steps.

Check the use case budget, if the budget of the use case is less than 50K , then register it as IDEA. If its greater than the budget, then its necessary to have IDEA created and converted to PROJECT.

Step-by-Step Guide:

Request can be raised either on myidM or CMP Portal.

To raise AD group creation request on myidM, refer to this documentation: AD Group Management Request

To raise AD group creation request on CMP portal:

Go to Adding Members to Active Directory Group - CMP

Enter Application details (Business Application, Environment, Sector)

Under Resources, choose “Active Directory Group” as Group Type

Enter incorrect/random AD group name and wait for a new box to appear at the top the page.

For the question “Are you not able to find Active Directory Group), click on Yes.

Enter details for the new fields that appear on the page.

Choose members to be onboarded and submit the request.

#### Sub_Task:  Resource Group Creation

Sub_Task_ID: 4.2

Task purpose:

The purpose of this task is to create Azure resource group ( RG ).

Prerequisites and Requirements:

Completion of All the Approvals task ( Task_ID : 2)

Completion of Sub Task: Raise Request for AD Group ( Sub_Task_ID : 4.1 )

Step-by-Step Guide:

Raise the SNOW request Cloud Onboarding Request | myServices in order to create RG.

Assignment Group: GLOBAL CLOUD SOLUTION ARCHITECTURE

Sector: [Specify Sector]

Service CI: EIP AZURE KUBERNETES SERVICE – SO

Project ID: [Instructions on how to create a Project ID]

Billing Entry Required: H-Code / Cost Center

Type: PAAS

The request typically takes 1 to 2 weeks to complete.

Submit a CNAME creation request for the PGT deployment project (DNS Name).

Once the ticket is opened, wait for it to get assigned to someone from CLOUD enablement team.

Reach out to the individual and attach necessary documents including CSA approval and Architecture diagram from TAC (which includes all physical and logical).

Creation of AD Group is essential.

#### Sub_Task:  Add members to AD group

Sub_Task_ID: 4.3

Task purpose:

The purpose of this task is to onboard developers to the created RG.

Prerequisites and Requirements:

Completion of Sub Task: Raise Request for AD Group ( Sub_Task_ID : 4.1 )

Completion of Sub Task: Resource Group Creation ( Sub_Task_ID : 4.2 )

Step-by-Step Guide:

Get the list of developers who needs to be onboarded to the AD.

Go to CMP and navigate to Adding members to Active Directory ( AD ).

Wait for the group owner approval and business application owner.

#### Sub_Task:  Azure Service Provisioning

Sub_Task_ID: 4.4

Task purpose:

The purpose of this task is to create necessary services needed for the use case based on the architecture diagram.

Prerequisites and Requirements:

Completion of Sub Task: Raise Request for AD Group ( Sub_Task_ID : 4.1 )

Completion of Sub Task: Resource Group Creation ( Sub_Task_ID : 4.2 )

Need to have Cost Center Details

Completion of Task: Project Onboarding ( Task_ID : 3 )

Step-by-Step Guide:

Identify the use case sector and based on that find the specific EDAP Team.

Draft an email with the architecture attached and CSA approval and all other information with specific template.

The EDAP team will estimate the services needed for the use case and start provisioning.

Once all this steps done , the resources will be provisioned.

### Task: ADO Creation

Task_ID: 5

#### Sub_Task: Raise request for ADO Creation

Sub_Task_ID: 5.1

Task purpose:

The purpose of this task is to create ADO repos, pipelines etc.

Prerequisites and Requirements:

This request can be done in standalone. It doesn’t have any prerequisite.

App development must be started.

Step-by-Step Guide:

Initiate SNOW Request

Use the sample request format: Example RITM6290789 | Requested Item | myServices (service-now.com)

Follow the ADO project naming convention: <SectorName>_<ProjectName>

Complete Required Training

Complete the Small Project Admin course as part of the onboarding process.

Request Support if Needed

Contact @DL - ITEIAPCICD Support Services for any additional support related to ADO onboarding.

Extras

Request New Azure DevOps Project:
Visit the Azure DevOps (ADO) Project Request page.

Resources for ADO Best Practices:

Refer to the Azure DevOps NextGenSite for best practices and FAQs.

Access Delivery Excellence - How-To-Do on SharePoint for Quick Reference Cards (QRCs) and handbooks.

For DevSecOps Standards:

Check the DevSecOps FAQ and Azure DevOps Standards and Best Practices.

For Additional Development Tools (StarTeam, MyEclipse, Git, Toad):

Visit the Development Solution Tools Subscription page to request or transfer installations.

### Task: OneReach Onboarding

Task_ID: 6

#### Sub_Task: Onboard use case to OneReach

Sub_Task_ID: 6.1

Task purpose:

The purpose of this task is to onboard the use case into One Reach Onboarding as project.

Prerequisites and Requirements:

This request can be done in standalone. It doesn’t have any prerequisite.

Business approval on costings is necessary.

Step-by-Step Guide:

Step 1: Submit a MyIDM request for "Conversational AI Studio."

Access the MyIDM portal using the following link: PepsiCo Identity Manager.

Step 2: Use the email template provided to onboard the use case to the OneReach platform through the DL Team.

For any OpsBot accounts related to a specific project, contact the DL Team at ITIAICONVERSATIONALAI@pepsico.com.

Step 3: Connect with the CSM Team using the specified email format.

Reference: Email Thread: FW: OneReach - Environment Provisioning

Point of Contact: Deepali Das, Jesus Colin, Conversational AI team reporting to Nachi.

Email template:

Subject: Onboarding Use Case for OneReach Platform

Dear [CSM Team/Recipient's Name],

I hope this message finds you well. I would like to onboard the following use case to the One Reach platform:

Use Case Name: [Enter Use Case Name]

Description: [Brief description of the use case]

Project Contact: [Your Name and Contact Information]

Please let me know if you require any additional information or documentation.

Thank you for your assistance!

Best regards,
[Your Name]
[Your Position]
[Your Contact Information]

### Task: OKTA Onboarding

Task_ID: 7

#### Sub_Task: Onboard use case to OneReach

Sub_Task_ID: 7.1

Task purpose:

Integrating PepsiCo’s Single-Sign-On (SSO) authentication mechanism into solutions and accessing PepGenX URLs.

Prerequisites and Requirements:

Completion of All the Approvals task ( Task_ID : 2)

Application Name (Service CI)

myidM form creation (if Data Classification is ‘Confidential’ or ‘Restricted’)

Step-by-Step Guide:

Open a new SNOW request IAM Services - SSO Integration Request | myServices and fill the required information.

Download the requirements document (word doc) and attach it to the record, and click on ‘Order Now’.

Assignment Group: IAMS WORK INTAKE (Validate SSO form request), SINGLE SIGN ON (SSO) WORK INTAKE (Fulfill the SSO Integration Request)

Contact: "DL - IT Associate SSO" <ITAssociateSSO@pepsico.com>

The SSO team will contact for additional information:

1. Number of users planned for PoC

2. API (M2M) Integration (Yes/No)

3. No of Token call per day ( Validity 1hr)

4. Number of services using this credentials in DEV

5. Token cache mechanism (Yes/No) [Mandatory to be Yes for scaling up to prod solution]

Once the details are confirmed, the team will share OKTA credentials (Client ID, Client Secret, IDP Metadata URI)

### Task: APIGEE Onboarding

Task_ID: 8

#### Sub_Task: Get APIGEE URL for the Function URL

Sub_Task_ID: 8.1

Task purpose:

The purpose of this task is to get APIGEE url for the function URL

Prerequisites and Requirements:

Ensure the Function URL has been created.

Step-by-Step Guide:

Step 1: Prepare the email using the following template.

To: DL-ITAPIGEEADMIN@pepsico.com or Binup
Subject: Request for APIGEE Access

Email Template:

Project Name: [Enter Project Name]

Project Owner: [Enter Project Owner]

Project Support Contact: [Enter Project Support Contact]

Business Sector: [Enter Business Sector]

Valid Snow Application Service CI: EIP AZURE KUBERNETES SERVICE - SO

Business Unit: [Enter Business Unit]

Project Acronym/Alias (3 - 10 characters): [Enter Acronym/Alias]

Swagger HUB ORG (If available): No

ADO Repo: [Enter ADO Repo]

H-Code: [Enter H-Code, ignore if added in WIT form]

ISA: [Enter ISA]

Architecture Diagram: Attached

Other WIT Form Data: [Enter any additional WIT form data]

Project AD Group:

Team.Support.FLNA.NonProd.PGTAsst

Team.Support.PGTDeploymentAssist.Admins

Step 2: Send the prepared email to the specified recipients.

Step 3: Await confirmation of access provision.

### Task: PepGenX Onboarding

Task_ID: 9

#### Sub_Task:  Service provisioning from pepgenx

Sub_Task_ID: 9.1

Task purpose:

The pepgenx platform offer atomic services like Chunking,embedding,llm generic, Azure Search etc as APIs

Prerequisites and Requirements:

Completion of Sub Task : Gen AI CoP Approval ( Sub_Task_ID : 2.4 )

Step-by-Step Guide:

Step 1: Share the GenAI CoP email thread with the PepGenX team.

Step 2: Complete the WIT form to onboard the use case and send it to the PepGenX team.

Step 3: After the form is processed, a JSON file will be sent to the owner via PEPSend.

### Task: Sharepoint Setup

Task_ID: 10

#### Sub_Task:  Setup SharePoint portal

Sub_Task_ID: 10.1

Task purpose:

If any chatbot from one reach has to be integrated with SharePoint, then this steps should be followed.

Prerequisites and Requirements:

SharePoint created.

Step-by-Step Guide:

Step 1: Request the creation of a new SharePoint site with the app catalog enabled.

Step 2: Create the SharePoint site for deployment purposes.

Step 3: Obtain the SharePoint SP token.

Step 4: Create an application in Entra ID.

Step 5: Forward the ticket to Entra ID for consent to generate the Site ID and Drive ID.

Step 6: Raise the request in RITM to the SharePoint team for further processing.

### Task: SCAN Assessment

Task_ID: 10

#### Sub_Task:  SCAN Assessment

Sub_Task_ID: 10.1

Task purpose:

The purpose of the SCAN Assessment is to determine the security scans required to support an Information Security Assessment. It is used to identify security weaknesses in computer systems, test applications in their operational state, and inspect application source code. Additionally, Penetration Tests are executed to exploit vulnerabilities and determine whether systems can be compromised or subjected to malicious activity.

Prerequisites and Requirements:

Completion of Sub_Task : ISA Approval (InfoSec Assessment) (Sub_Task_ID : 2.7)

Completion of application development and

Step-by-Step Guide:

