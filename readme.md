# Historic Oakland Foundation: Volunteer Site Updates

The HOF volunteer site uses a salesforce package that contains boilerplate code and labels that must be cloned in order to be modified. Below is documentation regarding changes that need to be made to support layout updates:
- [Cloned Files](#cloned-files): updates to site template and page layouts
- [New Custom Labels](#new-custom-labels): updates copy for navigation tabs
- [New Static Resources](#new-static-resources): adds stylesheet and logo graphics
- [Other Updates](#other-updates): to-dos for content and settings updates

> **Note:** Completing all of these changes may not be enough in order to make the updates visible to the public. Integration and publishing tasks need to be outlined and executed for this work to be complete

## Cloned Files

Updates to site template and page layouts must be made by via new files. Below you will find change notes on how the new files are different from the originals.

|original|new|description
|---|---|---|
HOFPersonalSiteTemplate | HOF_PersonalSIteTemplate | Site Layout (header, nav, body, footer)
GW_Volunteers__PersonalSiteJobListing | HOF_Volunteers__PersonalSiteJobListing | User Facing Page
GW_Volunteers__VolunteersJobListingFS | HOF_Volunteers__VolunteersSiteJobListingFS | Jobs Partial
GW_Volunteers__PersonalSiteJobCalendar | HOF_Volunteers__PersonalSiteJobCalendar | User Facing Page
GW_Volunteers__PersonalSiteContactInfo | HOF_Volunteers__PersonalSiteContactInfo | User Facing Page
GW_Volunteers__PersonalSiteReportHours | HOF_Volunteers__PersonalSiteReportHours | User Facing Page


### Change Notes

**HOF_PersonalSIteTemplate**
- adds `apex:stylesheet` for custom CSS
- adds `apex:stylesheet` for brand fonts
- removes inline style attributes from markup
- updates navigation markup to use new custom labels and link to new files
- updates navigation markup for new header styling
- updates markup around `apex:insert name="body"` with container class and main element
- updates footer markup for new footer styling

**HOF_Volunteers__PersonalSiteJobListing**
- updates markup to make page title h1

**HOF_Volunteers__VolunteersSiteJobListingFS**
- updates markup for job name heading 
- updates markup for list of volunteer jobs by wrapping in div for styling
- updates markup for job post content

**HOF_Volunteers__PersonalSiteJobCalendar**
- updates markup to make page title h1

**HOF_Volunteers__PersonalSiteContactInfo**
- removes width from markup
- removes inline formating
- updates bootstrap span classes (span5 & span7)
- removes spacer elements
- adds h1
- reposition label to come before field

**HOF_Volunteers__PersonalSiteReportHours**
-  updates markup to make page title h1 

## New Custom Labels

Updates to copy for navigation tabs must be done by making new labels and providing new values.

|orig label|orig val|new label|new val
|---|---|---|---|
labelPersonalSiteJobListingTitle|Volunteer Jobs|HOF_Volunteers_labelPersonalSiteJobListingTitle|Available Jobs
labelPersonalSiteJobCalendarTitle|Job Calendar|HOF_Volunteers_labelPersonalSiteJobCalendarTitle|Shift Calendar
labelPersonalSiteContactInfoTitle|View your information|HOF_Volunteers_labelPersonalSiteContactInfoTitle|Your Info
labelPersonalSiteReportHoursTitle|Report Hours|HOF_Volunteers_labelPersonalSiteReportHoursTitle|Report Hours
labelPersonalSiteTitle | Volunteers Personal Site | HOF_Volunteers_labelPersonalSiteTitle | Oakland Cemetery Volunteer

## New Static Resources

These files deliver style updates for layout and logo graphics for branding.

|resource|file name|
|---|---|
|CSS|HOFVolunteersStylesheet.css|
|HOF Arch Graphic|HOFVolunteersLogoArchStoneGray.svg|
|HOF Logo Graphic|HOFLogoOffBlack.svg|
|Facebook Logo|HOFFacebook.svg|
|Instagram Logo|HOFInstagram.svg|
|Twitter Logo|HOFTwitter.svg|

## Other Updates
Some updates that must be made to existing items in salesforce.
- Update Site Detail
    - Change Site Template to `HOF_PersonalSIteTemplate`
- After footer graphics are uploaded, make sure that the background-image URL is pointed to salesforce

## Site Update Steps Take
On Sat April 28th, the following updates occurred:
1. Uploaded Static Resources
    - **HOFVolunteersStylesheet**: New CSS for volunteer site update
        - `HOFVolunteersStylesheet.css`
        - Cache Control: Public
    - **HOFLogoOffBlack**: Logo used in volunteer site footer
        - `HOFLogoOffBlack.svg`
        - Cache Control: Public
    - **HOFFacebook**: Social media logo in volunteer site footer
        - `HOFFacebook.svg`
        - Cache Control: Public
    - **HOFInstagram**: Social media logo in volunteer site footer
        - `HOFInstagram.svg`
        - Cache Control: Public
    - **HOFTwitter**: Social media logo in volunteer site footer
        - `HOFTwitter.svg`
        - Cache Control: Public
    - **HOFVolunteersLogoArchStoneGray**: Arch logo used in volunteer site header
        - `HOFTwitter.svg`
        - Cache Control: Public
1. Created New Labels
    - **HOF_Volunteers_labelPersonalSiteJobListingTitle**: 
        - description: Vol site nav label
        - name: HOF_Volunteers_labelPersonalSiteJobListingTitle
        - value: Available Jobs
    - **HOF_Volunteers_labelPersonalSiteJobCalendarTitle**
        - description: Vol site nav label 
        - name: HOF_Volunteers_labelPersonalSiteJobCalendarTitle
        - value: Shift Calendar
    - **HOF_Volunteers_labelPersonalSiteContactInfoTitle**
        - description: Vol site nav label 
        - name: HOF_Volunteers_labelPersonalSiteContactInfoTitle
        - value: Your Info
    - **HOF_Volunteers_labelPersonalSiteReportHoursTitle**
        - description: Vol site nav label 
        - name: HOF_Volunteers_labelPersonalSiteReportHoursTitle
        - value: Report Hours
    - **HOF_Volunteers_labelPersonalSiteTitle**
        - description: Vol site title 
        - name: HOF_Volunteers_labelPersonalSiteTitle
        - value: Oakland Cemetery Volunteer
