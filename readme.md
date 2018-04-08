# Historic Oakland Foundation: Volunteer Site Updates

HOF uses a salesforce package that containes boilerplate code that must be cloned in order to be modified. In addtion to making code updates. Below you will find:
- cloned files: updates to site template and page layouts
- new custom fields: updates copy for navigation tabs
- new static resources: Stylesheet and graphics
- other updates: content and settings updates

## New Files
|original|new|
|---|---|
HOFPersonalSiteTemplate | HOF_PersonalSIteTemplate
GW_Volunteers__PersonalSiteJobListing | HOF_Volunteers__PersonalSiteJobListing
GW_Volunteers__PersonalSiteJobCalendar | HOF_Volunteers__PersonalSiteJobCalendar
GW_Volunteers__PersonalSiteContactInfo | HOF_Volunteers__PersonalSiteContactInfo
GW_Volunteers__PersonalSiteReportHours | HOF_Volunteers__PersonalSiteReportHours 

### Change Notes

**HOF_PersonalSIteTemplate**
- adds `apex:stylesheet` for custom CSS
- adds `apex:stylesheet` for brand fonts
- removes inline style attributes from markup
- updates navigation markup to use new custom labels and link to new files
- updates navigation markup for new header styling
- updates footer markup for new footer styling

**HOF_Volunteers__PersonalSiteJobCalendar**
-  new file for future work, no updates

**HOF_Volunteers__PersonalSiteContactInfo**
-  

**HOF_Volunteers__PersonalSiteReportHours**
-  new file for future work, no updates

## New Custom Labels
|orig label|orig val|new label|new val
|---|---|---|---|
labelPersonalSiteJobListingTitle|Volunter Jobs|HOF_Volunteers__labelPersonalSiteJobListingTitle|Volunteer Jobs
labelPersonalSiteJobCalendarTitle|Job Calendar|HOF_Volunteers__labelPersonalSiteJobCalendarTitle|Calendar
labelPersonalSiteContactInfoTitle|View your information|HOF_Volunteers__labelPersonalSiteContactInfoTitle|Your Info
labelPersonalSiteReportHoursTitle|Report Hours|HOF_Volunteers__labelPersonalSiteReportHoursTitle|Report Hours

## New Static Resources
|resource|file name|
|---|---|
|CSS|HOF_Volunteers__CSS.css|
|Gates Graphic|HOF_Volunteers__LogoArchStoneGray.svg|
|HOF Lockup Graphic|HOF_Volunteers__LogoTextWhite.svg|

## Other Updates
- Change Volunteer `labelPersonalSiteTitle` label from "Volunteers Personal Site" to "Volunteer Oakland"