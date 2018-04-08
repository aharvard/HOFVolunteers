# Historic Oakland Foundation: Volunteer Site Updates

The HOF volunteer site uses a salesforce package that containes boilerplate code and labels that must be cloned in order to be modified. Below is documentation regarding changes that need to be made to support layout updates:
- [Cloned Files](#cloned-files): updates to site template and page layouts
- [New Custom Labels](#new-custom-labels): updates copy for navigation tabs
- [New Static Resources](#new-static-resources): adds stylesheet and logo graphics
- [Other Updates](#other-updates): to-dos for content and settings updates

> **Note:** Completing all of these changes may not be enough in order to make the updates visiable to the public. Integration and publishing tasks need to be outlined and executed for this work to be complete

## Cloned Files

Updates to site template and page layouts must be made by via new files. Below you will find change notes on how the new files are different from the originals.

|original|new|
|---|---|
HOFPersonalSiteTemplate | HOF_PersonalSIteTemplate
GW_Volunteers.PersonalSiteJobListingFS | HOF_Volunteers__PersonalSiteJobListing
GW_Volunteers.PersonalSiteJobCalendar | HOF_Volunteers__PersonalSiteJobCalendar
GW_Volunteers.PersonalSiteContactInfo | HOF_Volunteers__PersonalSiteContactInfo
GW_Volunteers.PersonalSiteReportHours | HOF_Volunteers__PersonalSiteReportHours 

### Change Notes

**HOF_PersonalSIteTemplate**
- adds `apex:stylesheet` for custom CSS
- adds `apex:stylesheet` for brand fonts
- removes inline style attributes from markup
- updates navigation markup to use new custom labels and link to new files
- updates navigation markup for new header styling
- updates footer markup for new footer styling

**HOF_Volunteers__PersonalSiteJobListing**
- updates markup for job name heading 
- updates markup for list of volunteer jobs by wrapping in div for styling

**HOF_Volunteers__PersonalSiteJobCalendar**
-  _new file for future work, no updates_

**HOF_Volunteers__PersonalSiteContactInfo**
-  ... 

**HOF_Volunteers__PersonalSiteReportHours**
-  _new file for future work, no updates_

## New Custom Labels

Updates to copy for navigation tabs must be done by making new labels and providing new values.

|orig label|orig val|new label|new val
|---|---|---|---|
labelPersonalSiteJobListingTitle|Volunter Jobs|HOF_Volunteers__labelPersonalSiteJobListingTitle|Volunteer Jobs
labelPersonalSiteJobCalendarTitle|Job Calendar|HOF_Volunteers__labelPersonalSiteJobCalendarTitle|Calendar
labelPersonalSiteContactInfoTitle|View your information|HOF_Volunteers__labelPersonalSiteContactInfoTitle|Your Info
labelPersonalSiteReportHoursTitle|Report Hours|HOF_Volunteers__labelPersonalSiteReportHoursTitle|Report Hours

## New Static Resources

These files deliver style updates for layout and logo graphics for branding.

|resource|file name|
|---|---|
|CSS|HOF_Volunteers__CSS.css|
|Gates Graphic|HOF_Volunteers__LogoArchStoneGray.svg|
|HOF Lockup Graphic|HOF_Volunteers__LogoTextWhite.svg|

## Other Updates
Some updates can be made to existing items in salesforce.
- Update Site Detail
    - Change Site Template to `HOF_PersonalSIteTemplate`
- Change Volunteer `labelPersonalSiteTitle` label from "Volunteers Personal Site" to "Volunteer Oakland"