Feature: Tests medley


Those tests are test medley of tests from test rail from https://qa.sencha.com/index.php?/suites/view/516 - Creator: Pavel Juchelka


Scenario: Refresh list off apps C14247 C14252
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I refresh list of apps in Nexus 5
Then I refresh list of apps in Nexus 5
Then I refresh list of apps in Nexus 5
Then I close organization list menu 
Then I delete organization



Scenario: Failing - Opening apps with variant types of url C14237 C14236 C14234 C14233
And I login to Sace with org "icon-focused-org.profiq.cz" email "a@a.com" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "URL with jpg" app and wait until loads
Then I open organization list menu 
Then I choose "URL with html" app and wait until loads
Then I open organization list menu 
Then I choose "Z_Unreachable app" app and see message
Then I open organization list menu 
Then I choose "URL with pdf" app and wait until loads
Then I delete organization

@fullfunctional
Scenario: Open new tab C14244
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait until is page loaded
And I do a long press on a link - Nexus 5
Then I wait until is page loaded
Then I open in new tab
Then I open tab view 
Then I wait up to 10 seconds to see "Google"
Then I wait up to 10 seconds to see "Aaron Haser's Tests"
Then I delete organization from tab view




@fullfunctional
Scenario: Logging on org with variant types of apps icons assigned in manager C14175 C14219 C14220 C14221 C14222
And I login to Sace with org "icon-focused-org.profiq.cz" email "pavel.juchelka@profiq.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "Act-On" app and wait until loads
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I slide down in list of apps with Nexus 5
Then I delete organization

@active @fullfunctional
Scenario: C14106 C14124 C14164 C14174
And I enter "kekel2.profiq.cz" as the Organization name
Then I press Next button
Then I wait for 10 seconds
Then I touch on screen 240 from the left and 680 from the top
Then I press on keyboard "treti@se.cz" as SAML email
Then I press the enter button
Then I press on keyboard "sasasasa1" as SAML password
Then I press the enter button
And I enter PIN "2222" and PIn confirmation "aaaa"
Then I press back button on the top
Then I wait for 10 seconds
Then I touch on screen 240 from the left and 680 from the top
Then I press on keyboard "treti@se.cz" as SAML email
Then I press the enter button
Then I press on keyboard "sasasasa1" as SAML password
Then I press the enter button
And I enter PIN "aaaa" and PIn confirmation "aaaa"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu  
Then I press Account button
Then I reset current PIN "aaaa" to "asě3333" and confirmation "asě3334"
Then I wait up to 10 seconds to see "Confirmation PIN does not match"
Then I press "OK"
Then I reset current PIN "aaaa" to "asě33ewfwefš6426434343434253532333235hgctzctzcdtzctrfxcrtfxcrfczticvuzvzuvbčrěšč33" and confirmation "asě33ewfwefš6426434343434253532333235hgctzctzcdtzctrfxcrtfxcrfczticvuzvzuvbčrěšč33"
Then I close organization list menu 
Then I delete organization

@fullfunctional 
Scenario:  Unicode characters C14096 C15282
And I login to Sace with org "complicatedpinorg.profiq.cz" email "юзσερčččер@е商務кзампл.ком" password "юзσερčččе$р1" and PINs "2222$юзσéěíερčččер@е商務кзамплр"
Then I open organization list menu 
Then I press Account button
Then I press delete organization
Then I press "No"
Then I navigate back from account to list of apps
Then I switch organization 
Then I press "юзσερčččер@е商務кзампл.ком"
Then I enter PIN require "2222$юзσéěíερčččер@е商務кзамплр"
Then I press Sign in
Then I open organization list menu
Then I choose "юзσερčččер@е商務кзамплýžáком" app and wait until loads
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I choose "háčky a čárky" app and wait until loads
Then I delete organization  


@fullfunctional 
Scenario:  Workforce tier - 23 users C14581 C14571 C14575
And I login to Sace with org "workforce-tier.profiq.cz" email "pavel.juchelka@profiq.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "6" app and wait until loads
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.b" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.c" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.d" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.e" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.f" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.g" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.h" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.i" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.j" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.k" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.l" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.m" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.n" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.o" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.p" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.q" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.r" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.s" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.t" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.u" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce-tier.profiq.cz" email "a@a.v" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I scroll down
Then I scroll down
Then I scroll down
Then I scroll down
Then I press "a@a.m"
Then I go back
Then I wait for 10 seconds
Then I scroll up
Then I scroll up
Then I scroll up
Then I scroll up
Then I scroll up
Then I scroll up
Then I press "a@a.a"
Then I press Sign in
Then I delete organization 
Then I scroll down
Then I scroll down
Then I scroll down
Then I scroll down
Then I press "a@a.m"
Then I press Sign in
Then I delete organization 
Then I reinstall the Space


@active @fullfunctional 
Scenario: Free tier - autodowngrade - checking unable to access on more than 10 apps and 11th user is blocked - failing beacuse of reinstal app
And I login to Sace with org "free-tier.profiq.cz" email "pavel.juchelka@profiq.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I slide down in list of apps with Nexus 5
Then I choose "Dropbox" app 
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "free-tier.profiq.cz" email "a@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "free-tier.profiq.cz" email "a@a.b" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "free-tier.profiq.cz" email "a@a.c" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "free-tier.profiq.cz" email "a@a.d" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "free-tier.profiq.cz" email "a@a.e" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "free-tier.profiq.cz" email "a@a.f" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "free-tier.profiq.cz" email "a@a.g" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "free-tier.profiq.cz" email "a@a.h" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "free-tier.profiq.cz" email "a@a.i" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I enter "free-tier.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.j" and password "sasasasa1"
Then I press Log in button
Then I wait up to 10 seconds to see "This user has had their access revoked indefinitely by an administrator."
Then I press "OK"
Then I press back button on the top
Then I click on back button in entering org page
Then I switch organization 
Then I reinstall the Space



@fullfunctional
Scenario: Switch org during VPN getting connection C14148 C14279 C14970
And I enter "vpnjunipertesting.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "juniperuser@a.cz" and password "sesesesa2"
Then I press Log in button
Then I wait, until load Space 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I enter VPN login "user1" and password "l0st1n"
Then I wait for 2 seconds
Then I refresh page
Then I wait for 3 seconds
Then I open organization list menu 
Then I switch organization  
Then I press "juniperuser@a.cz"
Then I cancel VPN auth form
Then I delete organization 

@fullfunctional 
Scenario: F Login via SAML on blocked user/deuthorized/blocked device
And I enter "saml-org-with-blocked-user.profiq.cz" as the Organization name
Then I press Next button
Then I wait for 10 seconds
Then I touch on screen 240 from the left and 680 from the top
Then I press on keyboard "treti@se.cz" as SAML email
Then I press the enter button
Then I press on keyboard "sasasasa1" as SAML password
Then I press the enter button
Then I wait for 2 seconds
Then I wait up to 10 seconds to see "This user has had their access revoked indefinitely by an administrator."
Then I press "OK"
Then I navigate back in SAML page
And I enter "saml-with-blocked-device.profiq.cz" as the Organization name
Then I press Next button
Then I wait for 10 seconds
Then I touch on screen 240 from the left and 680 from the top
Then I press on keyboard "treti@se.cz" as SAML email
Then I press the enter button
Then I press on keyboard "sasasasa1" as SAML password
Then I press the enter button
Then I wait for 2 seconds
Then I wait up to 10 seconds to see "This device has been blocked"
Then I press "OK"
Then I navigate back in SAML page
And I enter "saml-org-with-deauthorized-device.profiq.cz" as the Organization name
Then I press Next button
Then I wait for 10 seconds
Then I touch on screen 240 from the left and 680 from the top
Then I press on keyboard "treti@se.cz" as SAML email
Then I press the enter button
Then I press on keyboard "sasasasa1" as SAML password
Then I press the enter button
Then I wait for 2 seconds
Then I wait up to 10 seconds to see "This device has been blocked"
Then I press "OK"



@fullfunctional 
Scenario: Login via SAML with incorrect certificate/endpoint url C14109 C14110 - pridat kontrolu ze vidi back button v samlu
And I enter "incorrect-certifiacate-saml.profiq.cz" as the Organization name
Then I press Next button
Then I wait for 10 seconds
Then I touch on screen 240 from the left and 680 from the top
Then I press on keyboard "treti@se.cz" as SAML email
Then I press the enter button
Then I press on keyboard "sasasasa1" as SAML password
Then I press the enter button
Then Space should not load
Then I navigate back in SAML page
And I enter "incorrect-certifiacate-saml.profiq.cz" as the Organization name
Then I press Next button
Then I wait for 10 seconds
Then I touch on screen 240 from the left and 680 from the top
Then I press on keyboard "treti@se.cz" as SAML email
Then I press the enter button
Then I press on keyboard "sasasasa1" as SAML password
Then I press the enter button
Then Space should not load
Then I navigate back in SAML page


@fullfunctional 
Scenario: Test after navigate back from reset password and PIN attempts exceed C14152 C14223 C14224 C14225 C14228 C14135 C14136 C14137 C15273 C15272
And I enter "MUHEHE.PROFIQ.CZ" as the Organization name
Then I press Next button
Then I enter user's email "A@A.CZ" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu   
Then I press Account button
Then I press delete organization
Then I press "No"
Then I navigate back from account to list of apps
Then I switch organization  
Then I add new organization
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
And I enter "pavel.other@profiq.cz" as the email
Then I choose Forgot password
Then I choose navigate back button on the top
Then I enter user's email "a@awww.cz" and password "sasasasa2"
Then I press Log in button
Then I wait up to 10 seconds to see "Login or password is incorrect"
Then I press "OK"
Then I enter user's email "invalid**email" and password "sasasasa2"
Then I press Log in button
Then I wait up to 10 seconds to see "Login or password is incorrect"
Then I press "OK"
Then I press back button on the top
Then I click on back button in entering org page
Then I press "a@a.cz"
Then I press Sign in
Then I wait up to 10 seconds to see "PIN cannot be empty"
Then I press "OK"
Then I enter PIN require "222"
Then I press Sign in
Then I wait up to 10 seconds to see "The PIN is incorrect.You have 6 attempts remaining."
Then I press "OK"
Then I enter PIN require "4654F"
Then I press Sign in
Then I wait up to 10 seconds to see "The PIN is incorrect.You have 5 attempts remaining."
Then I press "OK"
Then I enter PIN require "4654F"
Then I press Sign in
Then I wait up to 10 seconds to see "The PIN is incorrect.You have 4 attempts remaining."
Then I press "OK"
Then I enter PIN require "4654F"
Then I press Sign in
Then I wait up to 10 seconds to see "The PIN is incorrect.You have 3 attempts remaining."
Then I press "OK"
Then I enter PIN require "4654F"
Then I press Sign in
Then I wait up to 10 seconds to see "The PIN is incorrect.You have 2 attempts remaining."
Then I press "OK"
Then I enter PIN require "4654F"
Then I press Sign in
Then I wait up to 10 seconds to see "The PIN is incorrect.You have 1 attempts remaining."
Then I press "OK"
Then I enter PIN require "4654F"
Then I press Sign in
Then I wait up to 10 seconds to see "You have exceeded the maximum number of tries to enter your PIN. This organization and its data has been wiped from this device."
Then I press "OK"
And I enter "MUHEHE.PROFIQ.CZ" as the Organization name

@fullfunctional 
Scenario: Long org name/add new user with equal email, only upper character/add invalid org C14083 C14177 C14178 C14188 C14189 C14198 C14199 C14206 C14196 C14185 C14147
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "A@a.cz" and password "sasasasa1"
Then I press Log in button
Then I enter PIN require "2222"
Then I press Sign in
Then I delete organization   
And I enter "free-tier-organization-which-should-be-extreme-long-with-only-letters-pin-andblebleblelalablalalalala.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "longusernamelongusernamelongusername@longusernamelongusernamelongusername.uk" and password "dsgsgregweg3535&$%@\$^dfh$%^%$^dfgersdsdf"
Then I press Log in button
And I enter PIN "2222dssdfggerweg3535&$%@\$^dfh$%^%$^dfggferwg" and PIn confirmation "2222dssdfggerweg3535&$%@\$^dfh$%^%$^dfggferwg"
Then I press Continue button
Then I wait, until load Space 
Then I switch organization  
Then I add new organization
And I enter "non-existing.profiq.cz" as the Organization name
Then I press Next button
Then I wait up to 10 seconds to see "does not exist."
Then I press "OK"
And I enter "free-tier-organization-which-should-be-extreme-long-with-only-letters-pin-andblebleblelalablalalalala.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "Longusernamelongusernamelongusername@longusernamelongusernamelongusername.uk" and password "dsgsgregweg3535&$%@\$^dfh$%^%$^dfgersdsdf"
Then I press Log in button
Then I enter PIN require "2222dssdfggerweg3535&$%@\$^dfh$%^%$^dfggferwg"
Then I press Sign in
Then I wait, until load Space 
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I click on back button in entering email page
And I enter "non-existing.profiq.cz" as the Organization name
Then I press Next button
Then I wait up to 10 seconds to see "does not exist."
Then I press "OK"
And I enter "free-tier-organization-which-should-be-extreme-long-with-only-letters-pin-andblebleblelalablalalalala.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "Longusernamelongusernamelongusername@longusernamelongusernamelongusername.uk" and password "dsgsgregweg3535&$%@\$^dfh$%^%$^dfgersdsdf"
Then I press Log in button
Then I enter PIN require "2222dssdfggerweg3535&$%@\$^dfh$%^%$^dfggferwg"
Then I press Sign in
Then I wait, until load Space 
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I enter "non-existing.profiq.cz" as the Organization name
Then I press Next button
Then I wait up to 10 seconds to see "does not exist."
Then I press "OK"
And I enter "kekel.profiq.cz" as the Organization name
Then I press Next button
Then I navigate back in SAML page
And I enter "non-existing.profiq.cz" as the Organization name
Then I press Next button
Then I wait up to 10 seconds to see "does not exist."
Then I press "OK"
And I enter "free-tier-organization-which-should-be-extreme-long-with-only-letters-pin-andblebleblelalablalalalala.profiq.cz" as the Organization name
Then I press Next button











@endtoend @Performance @2676
Scenario: F Login with 3 users and each one open 23 apps C15269
And I login to Sace with org "manyapps.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "1" app and wait until loads
Then I open organization list menu 
Then I choose "2" app and wait until loads
Then I open organization list menu 
Then I choose "10" app and wait until loads
Then I open organization list menu 
Then I choose "11" app and wait until loads
Then I open organization list menu 
Then I choose "12" app and wait until loads
Then I open organization list menu 
Then I choose "13" app and wait until loads
Then I open organization list menu 
Then I choose "14" app and wait until loads
Then I open organization list menu 
Then I choose "15" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "16" app and wait until loads
Then I open organization list menu 
Then I choose "17" app and wait until loads
Then I open organization list menu 
Then I choose "18" app and wait until loads
Then I open organization list menu 
Then I choose "19" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "20" app and wait until loads
Then I open organization list menu 
Then I choose "21" app and wait until loads
Then I open organization list menu 
Then I choose "22" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "23" app and wait until loads
Then I open organization list menu 
Then I choose "3" app and wait until loads
Then I open organization list menu 
Then I choose "4" app and wait until loads
Then I open organization list menu 
Then I choose "5" app and wait until loads
Then I open organization list menu 
Then I choose "6" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "7" app and wait until loads
Then I open organization list menu 
Then I choose "8" app and wait until loads
Then I open organization list menu 
Then I choose "9" app and wait until loads
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "manyapps.profiq.cz" email "b@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "1" app and wait until loads
Then I open organization list menu 
Then I choose "2" app and wait until loads
Then I open organization list menu 
Then I choose "10" app and wait until loads
Then I open organization list menu 
Then I choose "11" app and wait until loads
Then I open organization list menu 
Then I choose "12" app and wait until loads
Then I open organization list menu 
Then I choose "13" app and wait until loads
Then I open organization list menu 
Then I choose "14" app and wait until loads
Then I open organization list menu 
Then I choose "15" app and wait until loads
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "16" app and wait until loads
Then I open organization list menu 
Then I choose "17" app and wait until loads
Then I open organization list menu 
Then I choose "18" app and wait until loads
Then I open organization list menu 
Then I choose "19" app and wait until loads
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "20" app and wait until loads
Then I open organization list menu 
Then I choose "21" app and wait until loads
Then I open organization list menu 
Then I choose "22" app and wait until loads
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "23" app and wait until loads
Then I open organization list menu 
Then I choose "3" app and wait until loads
Then I open organization list menu 
Then I choose "4" app and wait until loads
Then I open organization list menu 
Then I choose "5" app and wait until loads
Then I open organization list menu 
Then I choose "6" app and wait until loads
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "7" app and wait until loads
Then I open organization list menu 
Then I choose "8" app and wait until loads
Then I open organization list menu 
Then I choose "9" app and wait until loads
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "manyapps.profiq.cz" email "c@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "1" app and wait until loads
Then I open organization list menu 
Then I choose "2" app and wait until loads
Then I open organization list menu 
Then I choose "10" app and wait until loads
Then I open organization list menu 
Then I choose "11" app and wait until loads
Then I open organization list menu 
Then I choose "12" app and wait until loads
Then I open organization list menu 
Then I choose "13" app and wait until loads
Then I open organization list menu 
Then I choose "14" app and wait until loads
Then I open organization list menu 
Then I choose "15" app and wait until loads
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "16" app and wait until loads
Then I open organization list menu 
Then I choose "17" app and wait until loads
Then I open organization list menu 
Then I choose "18" app and wait until loads
Then I open organization list menu 
Then I choose "19" app and wait until loads
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "20" app and wait until loads
Then I open organization list menu 
Then I choose "21" app and wait until loads
Then I open organization list menu 
Then I choose "22" app and wait until loads
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "23" app and wait until loads
Then I open organization list menu 
Then I choose "3" app and wait until loads
Then I open organization list menu 
Then I choose "4" app and wait until loads
Then I open organization list menu 
Then I choose "5" app and wait until loads
Then I open organization list menu 
Then I choose "6" app and wait until loads
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "7" app and wait until loads
Then I open organization list menu 
Then I choose "8" app and wait until loads
Then I open organization list menu 
Then I choose "9" app and wait until loads
Then I try to find login element form from Act-On
Then I delete organization


@endtoend @Performance
Scenario: Login on many apps with one user and let everyone fully loads C15268
And I login to Sace with org "manyapps.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "1" app and wait until loads
Then I open organization list menu 
Then I choose "2" app and wait until loads
Then I open organization list menu 
Then I choose "10" app and wait until loads
Then I open organization list menu 
Then I choose "11" app and wait until loads
Then I open organization list menu 
Then I choose "12" app and wait until loads
Then I open organization list menu 
Then I choose "13" app and wait until loads
Then I open organization list menu 
Then I choose "14" app and wait until loads
Then I open organization list menu 
Then I choose "15" app and wait until loads
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "16" app and wait until loads
Then I open organization list menu 
Then I choose "17" app and wait until loads
Then I open organization list menu 
Then I choose "18" app and wait until loads
Then I open organization list menu 
Then I choose "19" app and wait until loads
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "20" app and wait until loads
Then I open organization list menu 
Then I choose "21" app and wait until loads
Then I open organization list menu 
Then I choose "22" app and wait until loads
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "23" app and wait until loads
Then I open organization list menu 
Then I choose "3" app and wait until loads
Then I open organization list menu 
Then I choose "4" app and wait until loads
Then I open organization list menu 
Then I choose "5" app and wait until loads
Then I open organization list menu 
Then I choose "6" app and wait until loads
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "7" app and wait until loads
Then I open organization list menu 
Then I choose "8" app and wait until loads
Then I open organization list menu 
Then I choose "9" app and wait until loads
Then I try to find login element form from Act-On
Then I delete organization 


@endtoend @Performance
Scenario: Login on many apps with one user and switch between them before fully loads C15267
And I login to Sace with org "manyapps.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "1" app
Then I open organization list menu 
Then I choose "2" app
Then I open organization list menu 
Then I choose "10" app
Then I open organization list menu 
Then I choose "11" app
Then I open organization list menu 
Then I choose "12" app
Then I open organization list menu 
Then I choose "13" app
Then I open organization list menu 
Then I choose "14" app
Then I open organization list menu 
Then I choose "15" app
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "16" app
Then I open organization list menu 
Then I choose "17" app
Then I open organization list menu 
Then I choose "18" app
Then I open organization list menu 
Then I choose "19" app
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "20" app
Then I open organization list menu 
Then I choose "21" app
Then I open organization list menu 
Then I choose "22" app
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "23" app
Then I open organization list menu 
Then I choose "3" app
Then I open organization list menu 
Then I choose "4" app
Then I open organization list menu 
Then I choose "5" app
Then I open organization list menu 
Then I choose "6" app
Then I open organization list menu 
Then I wait for 5 seconds
Then I slide down in list of apps with Nexus 5 slightly
Then I choose "7" app
Then I open organization list menu 
Then I choose "8" app
Then I open organization list menu 
Then I choose "9" app and wait until loads
Then I try to find login element form from Act-On
Then I delete organization 

@endtoend @Performance
Scenario: Add and delete an user 13 times (Workaround due BROW-2701) C15266
And I login to Sace with org "workforce.profiq.cz" email "a@a.a" password "sasasasa1" and PINs "2222"
Then I delete organization 
And I login to Sace with org "workforce.profiq.cz" email "b@a.a" password "sasasasa1" and PINs "2222"
Then I close organization list menu 
Then I delete organization 
And I login to Sace with org "workforce.profiq.cz" email "c@a.a" password "sasasasa1" and PINs "2222"
Then I close organization list menu 
Then I delete organization 
And I login to Sace with org "workforce.profiq.cz" email "d@a.a" password "sasasasa1" and PINs "2222"
Then I close organization list menu 
Then I delete organization 
And I login to Sace with org "workforce.profiq.cz" email "e@a.a" password "sasasasa1" and PINs "2222"
Then I close organization list menu 
Then I delete organization 
And I login to Sace with org "workforce.profiq.cz" email "f@a.a" password "sasasasa1" and PINs "2222"
Then I close organization list menu 
Then I delete organization 
And I login to Sace with org "workforce.profiq.cz" email "g@a.a" password "sasasasa1" and PINs "2222"
Then I close organization list menu 
Then I delete organization 
And I login to Sace with org "workforce.profiq.cz" email "h@a.a" password "sasasasa1" and PINs "2222"
Then I close organization list menu 
Then I delete organization 
And I login to Sace with org "workforce.profiq.cz" email "i@a.a" password "sasasasa1" and PINs "2222"
Then I close organization list menu 
Then I delete organization 
And I login to Sace with org "workforce.profiq.cz" email "c@a.a" password "sasasasa1" and PINs "2222"
Then I close organization list menu 
Then I delete organization 
And I login to Sace with org "workforce.profiq.cz" email "a@a.a" password "sasasasa1" and PINs "2222"
Then I close organization list menu 
Then I delete organization 
And I login to Sace with org "workforce.profiq.cz" email "b@a.a" password "sasasasa1" and PINs "2222"
Then I close organization list menu 
Then I delete organization 
And I login to Sace with org "workforce.profiq.cz" email "j@a.a" password "sasasasa1" and PINs "2222"
Then I close organization list menu 
Then I delete organization 
And I enter "kekel.profiq.cz" as the Organization name
Then I press Next button
Then I wait for 10 seconds
Then I touch on screen 240 from the left and 680 from the top
Then I press on keyboard "treti@se.cz" as SAML email
Then I touch on screen 240 from the left and 580 from the top
Then I press on keyboard "sasasasa1" as SAML password
Then I press the enter button
Then I wait, until load Space 
Then I wait for 7 seconds
Then I wait, until load Space 
Then I wait for 2 seconds
Then I slide down in list of apps
Then I choose "savetest" app
Then I open action toolbar button
Then I wait for 5 seconds
Then I save file
Then I should see file was saved
Then I open organization list menu 
Then I choose "wef" app and wait until loads
Then I delete organization 




@endtoend @Performance @failing @2676
Scenario: F Opening many apps on many users on one device on Workforce tier C15253
And I login to Sace with org "workforce.profiq.cz" email "a@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "b@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "c@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "d@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "e@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "f@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "g@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "h@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "i@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "j@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  
Then I add new organization
And I login to Sace with org "workforce.profiq.cz" email "k@a.a" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "ajj" app 
Then I open organization list menu 
Then I choose "ac24" app 
Then I open organization list menu 
Then I choose "Box" app 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I switch organization  


Scenario: Everything is long and incorect PIN authentication
And I enter "free-tier-organization-which-should-be-extreme-long-with-only-letters-pin-andblebleblelalablalalalala.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "longusernamelongusernamelongusername@longusernamelongusernamelongusername.uk" and password "dsgsgregweg3535&$%@\$^dfh$%^%$^dfgersdsdf"
Then I press Log in button
And I enter PIN "2222dssdfggerweg3535&$%@\$^dfh$%^%$^dfggferwg" and PIn confirmation "2222dssdfggerweg3535&$%@\$^dfh$%^%$^dfggferwg"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu 
Then I switch organization  
Then I press "longusernamelongusernamelongusername@longusernamelongusernamelongusername.uk"
Then I enter PIN require "3333"
Then I press Sign in
Then I wait up to 10 seconds to see "The PIN is incorrect.You have 1 attempts remaining."
Then I press "OK"
Then I enter PIN require "2222dssdfggerweg3535&$%@\$^dfh$%^%$^dfggferwg"
Then I press Sign in
Then I delete organization 






Scenario: Entering empty and invalid organization name and enter invalid email
When I press "Next"
Then I see "Organization name cannot be empty"
Then I press "OK"
Then I touch the "Organization name" text
Then I press "Back"
And I enter "non-existing.profiq.cz" as the Organization name
Then I press Next button
Then I wait up to 10 seconds to see "does not exist."
Then I press "OK"
And I enter "complicatedpinorg.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@awww.cz" and password "sasasasa2"
Then I press Log in button
Then I wait up to 10 seconds to see "Login or password is incorrect"
Then I press "OK"
Then I enter user's email "invalid**email" and password "sasasasa2"
Then I press Log in button
Then I wait up to 10 seconds to see "Login or password is incorrect"
Then I press "OK"
Then I enter user's email "user.who.get.complicated.pin@a.aa" and password "sasasasa2"
Then I press Log in button
And I enter PIN "Aab55##66ane" and PIn confirmation "Aab55##66ane"
Then I press Continue button
Then I wait, until load Space 
Then I delete organization 

Scenario: Use all back buttons until is PIN confirmed
And I enter "muhehe.profiq.cz" as the Organization name
Then I click on back button in entering org page
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I click on back button in entering email page
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press back button on the top
Then I press Log in button
Then I press back button on the top
Then I press back button on the top
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
Then I wait up to 10 seconds to see "Continue"
Then I wait for 2 seconds
Then I go back
Then I press Log in button
Then I wait up to 10 seconds to see "Continue"
Then I go back
Then I go back
Then I wait up to 10 seconds to see "Log In"
Then I go back
Then I go back
Then I press Next button
Then I wait up to 10 seconds to see "Log In"
Then I go back
Then I go back
And I enter "kekel.profiq.cz" as the Organization name
Then I press Next button
Then I navigate back in SAML page
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu
Then I switch organization
Then I add new organization
Then I click on back button in entering org page
Then I add new organization
Then I press back button on the top
Then I add new organization
Then I wait up to 10 seconds to see "Next"
Then I go back
Then I go back
Then I press "a@a.cz"
Then I enter PIN require "2222"
Then I press Sign in
Then I delete organization 


Scenario: Refresh page
And I enter "vpnciscotesting.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "ciscoshouldworkonprettylongemail@a.cz" and password "stT21tobeW1"
Then I press Log in button
Then I wait, until load Space 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I cancel VPN auth form
Then I refresh page
Then I cancel VPN auth form
Then I delete organization 


Scenario: Shorter PIN than is required and PINs does not match
And I enter "complicatedpinorg.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "user.who.get.complicated.pin@a.aa" and password "sasasasa2"
Then I press Log in button
And I enter PIN "Aab55##66ane" and PIn confirmation "Aab55##66anp"
Then I press Continue button
Then I wait up to 10 seconds to see "Confirmation PIN does not match"
Then I press "OK"
And I enter PIN "Aab5#" and PIn confirmation "Aab5#"
Then I press Continue button
Then I wait up to 10 seconds to see "PIN must be at least 6 characters long"
Then I press "OK"
And I enter PIN "Aab55##66aneoineionewfcoiwebfuiwebfu$%^$%^#$%@#$%09789678" and PIn confirmation "Aab55##66aneoineionewfcoiwebfuiwebfu$%^$%^#$%@#$%09789678"
Then I press Continue button
Then I wait, until load Space 
Then I delete organization 

Scenario: Sending resetting password email on non existing email
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
And I enter "pavel.other@profiq.cz" as the email
Then I choose Forgot password
Then I reset password
Then I wait up to 10 seconds to see "The specified email does not exist."
Then I press "OK"
Then I choose navigate back button on the top
Then I press "Back"
Then I wait up to 10 seconds to see "New organization"



Scenario: Sending resetting password email (email is not opened)
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
And I enter "pavel.juchelka@profiq.cz" as the email
Then I choose Forgot password
Then I reset password
Then I wait up to 5 seconds to see "Please check your email."
Then I choose navigate back button on the top
Then I press "Back"
Then I wait up to 10 seconds to see "New organization"

Scenario: Wrong email password
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa2"
Then I press Log in button
Then I wait for "Login or password is incorrect" to appear
Then I press "OK"
Then I press Log in button
Then I wait for "Login or password is incorrect" to appear
Then I press "OK"
Then I press "Back"
Then I wait up to 10 seconds to see "New organization"

Scenario: Reset PIN
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I press Account button
Then I reset current PIN "2222" to "3333" and confirmation "3333"
Then I close organization list menu 
Then I delete organization 

Scenario: Read terms of services (content of terms is not tested)
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I press Account button
Then I read terms of service
Then I navigate back from account to list of apps
Then I close organization list menu 
Then I delete organization 

Scenario: Read Attributions (content of Attributions is not tested)
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I press Account button
Then I read attributions
Then I navigate back from account to list of apps
Then I close organization list menu 
Then I delete organization 


Scenario: Add and open favorite (+ long app name)
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu  
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I open action toolbar button
Then I add favorite
Then I add favorite
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app
Then I open organization list menu 
Then I roll favorites
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On
Then I delete organization

Scenario: Switch organization
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu
Then I switch organization  
Then I press "a@a.cz"
Then I enter PIN require "2222"
Then I press Sign in
Then I delete organization 


Scenario: Login and delete org
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu   
Then I press Account button
Then I press delete organization
Then I press "Yes"
Then I wait until I see entering organization name page


Scenario: Open tab view and choose tab
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu  
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app
Then I wait until is page loaded
Then I open tab view 
Then I press "Act-on :: Login"
Then I try to find login element form from Act-On
Then I delete organization 


Scenario: login to cisco VPN (+long email)
And I enter "vpnciscotesting.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "ciscoshouldworkonprettylongemail@a.cz" and password "stT21tobeW1"
Then I press Log in button
Then I wait, until load Space 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I enter VPN login "space" and password "Spac3r"
Then I wait until page under VPN is loaded
Then I try to find login element form from Act-On
Then I delete organization 

Scenario: login to juniper VPN
And I enter "vpnjunipertesting.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "juniperuser@a.cz" and password "sesesesa2"
Then I press Log in button
Then I wait, until load Space 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I enter VPN login "user1" and password "l0st1n"
Then I wait until page under VPN is loaded
Then I try to find login element form from Act-On
Then I delete organization 


Scenario: Login on blocked/deauthorized user - only blocked device (Profiq devices only so far)
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "blockeduser@a.cz" and password "sasasasa1"
Then I press Log in button
Then I wait up to 10 seconds to see "This user has had their access revoked"
Then I press "OK"
Then I enter user's email "deauthorizeduser@a.cz" and password "sasasasa1"
Then I press Log in button
Then I wait up to 10 seconds to see "This device has been blocked"
Then I press "OK"
Then I enter user's email "userwithblockeddevice@a.cz" and password "sasasasa1"
Then I press Log in button
Then I wait up to 10 seconds to see "This device has been blocked"
Then I press "OK"
Then I click on back button in entering email page
And I enter "kekel.profiq.cz" as the Organization name
Then I press Next button
Then I login to SAML OneLogin on Nexus5 on user dalsi@se.cz
Then I wait up to 20 seconds to see "This user has had their access revoked indefinitely by an administrator."
Then I press "OK"


Scenario: Creating multiple accounts (no influence by favorites) - fail BROW-2645 - but I make it pass
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu   
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I open action toolbar button
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app 
Then I open organization list menu 
Then I roll favorites
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On
Then I open organization list menu
Then I switch organization 
Then I add new organization
Then I touch the "Organization name" text
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@aa.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "3333" and PIn confirmation "3333"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu   
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I open action toolbar button
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app 
Then I open organization list menu 
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On
Then I open organization list menu
Then I switch organization  
Then I press "a@a.cz"
Then I enter PIN require "2222"
Then I press Sign in
Then I open organization list menu
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On
Then I delete organization 
Then I press "a@aa.cz"
Then I enter PIN require "3333"
Then I press Sign in
Then I open organization list menu
Then I open organization list menu
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On
Then I delete organization 
Then I wait until I see entering organization name page




Scenario: Saving file
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu
Then I choose "savetest" app
Then I open action toolbar button
Then I wait for 5 seconds
Then I save file
Then I should see file was saved
Then I open organization list menu 
Then I choose "wef" app
Then I wait for 5 seconds
Then I delete organization 





















Scenario: Navigate via link and history back/forward 
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait for progress
Then I touch on screen 200 from the left and 640 from the top
Then I open tab view 
Then I press "Google"
Then I navigate through history back
Then I open tab view 
Then I press "Aaron Haser's Tests"
Then I navigate through history forward
Then I open tab view 
Then I press "Google"
Then I delete organization 


Scenario: Wipe device and add again (checking by favorites) - wipe device message is not showed(not implemented in tests yet) - Failed BROW-2645 - but it pass
And I login to Sace with org "muhehe.profiq.cz" email "a@a.Cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I press view with id "action_show_toolbar"
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app 
Then I open organization list menu 
Then I roll favorites
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On 
Then I open organization list menu
Then I choose "space manager" app
Then I enter into manager organization name "muhehe.profiq.cz" email "pavel.juchelka@profiq.cz" password "sasasasa1"
Then I press the enter button
Then I wait for 15 seconds
Then I touch on screen 150 from the left and 650 from the top
Then I wait for 10 seconds
Then I touch on screen 474 from the left and 638 from the top
Then I wait for 4 seconds
Then I touch on screen 794 from the left and 1700 from the top
Then I wait for 4 seconds
Then I touch on screen 420 from the left and 1130 from the top
Then I wait until I see create organization page
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu  
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I press view with id "action_show_toolbar"
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app 
Then I open organization list menu 
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On
Then I open organization list menu
Then I press Account button
Then I press delete organization
Then I press "Yes"
Then I wait until I see create organization page



Scenario: Refresh page in new tab in VPN ????
And I login to Sace client with org "vpnjunipertesting.profiq.cz" email "user22@se.aa" password "sasasasa1"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I enter VPN login "user1" and password "l0st1n"
Then I wait until page under VPN is loaded
And I do a long press on a link - Nexus 5
Then I open in new tab
Then I refresh page
Then I delete organization 


Scenario: Login through SAML (+sliding in list of apps)
And I enter "kekel.profiq.cz" as the Organization name
Then I press Next button
Then I wait for 10 seconds
Then I touch on screen 240 from the left and 680 from the top
Then I press on keyboard "treti@se.cz" as SAML email
Then I touch on screen 240 from the left and 580 from the top
Then I press on keyboard "sasasasa1" as SAML password
Then I press the enter button
Then I wait, until load Space 
Then I wait for 7 seconds
Then I wait, until load Space 
Then I open organization list menu
Then I wait for 4 seconds
Then I slide down in list of apps
Then I choose "space manager" app
Then I delete organization 
Then I wait until I see entering organization name page

@mytag
Scenario: Close new tab
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait until is page loaded
And I do a long press on a link - Nexus 5
Then I open in new tab
Then I open tab view 
Then I wait up to 10 seconds to see "Google"
Then I wait up to 10 seconds to see "Aaron Haser's Tests"
Then I close new tab
Then I check only one tab exist
Then I press "Aaron Haser's Tests"
Then I delete organization 


Scenario: Multitab
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait until is page loaded
And I do a long press on a link - Nexus 5
Then I open in new tab
Then I open tab view 
Then I press "Google"
Then I delete organization 

