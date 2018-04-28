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
labelPersonalSiteJobListingTitle|Volunteer Jobs|HOF_Volunteers__labelPersonalSiteJobListingTitle|Volunteer Jobs
labelPersonalSiteJobCalendarTitle|Job Calendar|HOF_Volunteers__labelPersonalSiteJobCalendarTitle|Calendar
labelPersonalSiteContactInfoTitle|View your information|HOF_Volunteers__labelPersonalSiteContactInfoTitle|Your Info
labelPersonalSiteReportHoursTitle|Report Hours|HOF_Volunteers__labelPersonalSiteReportHoursTitle|Report Hours

## New Static Resources

These files deliver style updates for layout and logo graphics for branding.

|resource|file name|
|---|---|
|CSS|HOF_Volunteers__Stylesheet.css|
|HOF White Gates Graphic|HOF_Volunteers__LogoArchStoneGray.svg|
|HOF White Logo Graphic|hof-logo_off-black.svg|
|Facebook Logo|hof_facebook.svg|
|Instagram Logo|hof_instagram.svg|
|Twitter Logo|hof_twitter.svg|

## Other Updates
Some updates that must be made to existing items in salesforce.
- Update Site Detail
    - Change Site Template to `HOF_PersonalSIteTemplate`
- Change Volunteer `labelPersonalSiteTitle` label from "Volunteers Personal Site" to "Oakland Cemetery Volunteer"
- After footer graphics are uploaded, make sure that the background-image URL is pointed to salesforce