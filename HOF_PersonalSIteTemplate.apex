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
    <!-- Custom CSS -->
    <apex:stylesheet value="{!URLFOR($Resource.HOF_Volunteers__CSS)}"/>
    <!-- Brand Fonts -->
    <apex:stylesheet value="https://fonts.googleapis.com/css?family=Crimson+Text:400,700|Work+Sans:100,200,300"/>
    
<!-- Load VolunteersPersonalSiteCSS.css -->
    <apex:stylesheet value="{!strURLtoCSSFile}" />

    <!-- Modified Header -->
    <apex:insert name="header">
        <!-- 
            Updates Include:
            1. Updates to Header Markup for styling
            2. Updates to Nav labels & links
         -->
        <div class="hof-header">
            <div class="container-fluid">
                
                <!-- Header Logo & Site Title -->
                <div class="header-branding">
                    <div class="header-logo"></div>
                    <div class="site-title">{!$Label.GW_Volunteers__labelPersonalSiteTitle}</div>
                </div>
                
                <!-- Site Nav -->
                <nav class="hedaer-nav">              
                    <ul>
                        <li class="{!IF($CurrentPage.Name == 'HOF_Volunteers__PersonalSiteJobListing', 'active', '')}">
                            <a href="{!$Page.HOF_Volunteers__PersonalSiteJobListing + '?Language=' + Language + '&nMonthsToShow=6'}" >{!$Label.HOF_Volunteers__labelPersonalSiteJobListingTitle}</a>
                        </li>
                        <li class="{!IF($CurrentPage.Name == 'HOF_Volunteers__PersonalSiteJobCalendar', 'active', '')}">
                            <a href="{!$Page.HOF_Volunteers__PersonalSiteJobCalendar + '?Language=' + Language + '&nMonthsToShow=1'}" >{!$Label.HOF_Volunteers__labelPersonalSiteJobCalendarTitle}</a>
                        </li>
                        <li class="{!IF($CurrentPage.Name == 'HOF_Volunteers__PersonalSiteContactInfo', 'active', '')}">
                            <a href="{!$Page.HOF_Volunteers__PersonalSiteContactInfo + '?Language=' + Language}" >{!$Label.HOF_Volunteers__labelPersonalSiteContactInfoTitle}</a>
                        </li>
                        <li class="{!IF($CurrentPage.Name == 'HOF_Volunteers__PersonalSiteReportHours', 'active', '')}">
                            <a href="{!$Page.HOF_Volunteers__PersonalSiteReportHours + '?Language=' + Language}" >{!$Label.HOF_Volunteers__labelPersonalSiteReportHoursTitle}</a>
                        </li>                
                    </ul>
                </nav>          
        </div>
    </apex:insert>
    
    <main class="container">
        <apex:insert name="body" />
    </main>
    
    <!-- Modified Footer -->
    <apex:insert name="footer">    
        <!-- Simplifed for Styling -->
        <div class="hof-footer"></div>    
        <site:googleAnalyticsTracking />            
    </apex:insert>
    
</apex:page>