<apex:page showHeader="false" id="SiteTemplate" standardStylesheets="false" controller="GW_Volunteers.VOL_CTRL_PersonalSiteTemplate" cache="false">

<!-- Load jQuery  -->
    <apex:includeScript value="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"/>
    <apex:includeScript value="https://ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/jquery-ui.min.js"/>

<!--Load Bootstrap -->     
    <apex:stylesheet value="{!URLFOR($Resource.GW_Volunteers__Bootstrap, 'bootstrap/css/bootstrap.css')}"/>
    <apex:stylesheet value="{!URLFOR($Resource.GW_Volunteers__Bootstrap4Force)}"/>    
    <apex:stylesheet value="{!URLFOR($Resource.GW_Volunteers__Bootstrap, 'bootstrap/css/bootstrap.min.css')}"/>
    <apex:includescript value="{!URLFOR($Resource.GW_Volunteers__Bootstrap, 'bootstrap/js/bootstrap.js')}"/>
    <apex:includescript value="{!URLFOR($Resource.GW_Volunteers__Bootstrap, 'bootstrap/js/bootstrap.min.js')}"/>
    
<!-- Load VolunteersPersonalSiteCSS.css -->
    <apex:stylesheet value="{!strURLtoCSSFile}" />

    <apex:insert name="header">
        <div class="navbar navbar-static-top">
            <div class="navbar-inner" style="padding:20px 40px; background-color: #39c; background-image: none; background-repeat: no-repeat; filter: none;">
                <h2 style="color:white;">{!$Label.GW_Volunteers__labelPersonalSiteTitle}</h2>
            </div>
            <div class="navbar-inner" style="padding:0 20px;">              
                <ul class="nav">
                    <li class="{!IF($CurrentPage.Name == 'GW_Volunteers__PersonalSiteJobListing', 'active', '')}"><a href="{!$Page.GW_Volunteers__PersonalSiteJobListing + '?Language=' + Language + '&nMonthsToShow=6'}" >{!$Label.GW_Volunteers__labelPersonalSiteJobListingTitle}</a></li>
                    <li class="{!IF($CurrentPage.Name == 'GW_Volunteers__PersonalSiteJobCalendar', 'active', '')}"><a href="{!$Page.GW_Volunteers__PersonalSiteJobCalendar + '?Language=' + Language + '&nMonthsToShow=1'}" >{!$Label.GW_Volunteers__labelPersonalSiteJobCalendarTitle}</a></li>
                    <li class="{!IF($CurrentPage.Name == 'GW_Volunteers__PersonalSiteContactInfo', 'active', '')}"><a href="{!$Page.GW_Volunteers__PersonalSiteContactInfo + '?Language=' + Language}" >{!$Label.GW_Volunteers__labelPersonalSiteContactInfoTitle}</a></li>
                    <li class="{!IF($CurrentPage.Name == 'GW_Volunteers__PersonalSiteReportHours', 'active', '')}"><a href="{!$Page.GW_Volunteers__PersonalSiteReportHours + '?Language=' + Language}" >{!$Label.GW_Volunteers__labelPersonalSiteReportHoursTitle}</a></li>                
                </ul>
            </div>          
        </div>
    </apex:insert>
    
    <div style="padding:20px;" >
        <apex:insert name="body" />
    </div>
    
    <apex:insert name="footer">    
        <div class="navbar navbar-static-bottom">
            <div class="navbar-inner" style="padding:18px 0 0 20px;">
                <p>&copy; Volunteers for Salesforce 2016</p>
            </div>
        </div>    
        <site:googleAnalyticsTracking />            
    </apex:insert>
    
</apex:page>