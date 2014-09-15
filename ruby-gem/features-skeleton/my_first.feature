Feature: Tests medley


Those tests are test medley of tests from test rail from https://qa.sencha.com/index.php?/suites/view/516 - Creator: Pavel Juchelka




Scenario: Refresh list off apps C14247 C14252 C14242
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I refresh list of apps
Then I refresh list of apps
Then I close organization list menu 
Then I delete organization


Scenario: Opening apps with variant types of url C14237 C14236 C14234 C14233 C14674
And I login to Sace with org "icon-focused-org.profiq.cz" email "a@a.com" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "URL with jpg" app and wait until loads
Then I open organization list menu 
Then I choose "URL with html" app and wait until loads
Then I open organization list menu 
Then I choose "URL with pdf" app and wait until loads
Then I open organization list menu 
Then I choose "sss2" app and wait until loads
Then I download an image
Then I open action toolbar button
Then I save file
Then I wait up to 10 seconds to see "You do not have persmission to save this file. Please contact your administrator."
Then I press "OK"
Then I open organization list menu 
Then I choose "Z_Unreachable app" app and see message
Then I delete organization


Scenario: Open new tab C14244
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait until is page loaded
And I do a long press on a link
Then I wait until is page loaded
Then I open in new tab
Then I open tab view 
Then I wait up to 10 seconds to see "Google"
Then I wait up to 10 seconds to see "Aaron Haser's Tests"
Then I delete organization from tab view



@1949 @failing
Scenario: Logging on org with variant types of apps icons assigned in manager C14175 C14219 C14220 C14221 C14222
And I login to Sace with org "icon-focused-org.profiq.cz" email "pavel.juchelka@profiq.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "Act-On" app and wait until loads
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I slide down in list of apps
Then I delete organization


Scenario: C14106 C14124 C14164 C14174 C15457
And I enter "kekel2.profiq.cz" as the Organization name
Then I press Next button
Then I login to SAML OneLogin on user treti@se.cz
And I enter PIN "2222" and PIn confirmation "aaaa"
Then I press back button on the top
Then I login to SAML OneLogin on user treti@se.cz
And I enter PIN "aaaa" and PIn confirmation "aaaa"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu  
Then I press Account button
Then I click on reset PIN button
Then I reset current PIN "aaaa" to "asě3333" and confirmation "asě3334"
Then I wait up to 10 seconds to see "Confirmation PIN does not match"
Then I press "OK"
Then I reset current PIN "aaaa" to "asě33ewfwefš6426434343434253532333235hgctzctzcdtzctrfxcrtfxcrfczticvuzvzuvbčrěšč33" and confirmation "asě33ewfwefš6426434343434253532333235hgctzctzcdtzctrfxcrtfxcrfczticvuzvzuvbčrěšč33"
Then I press Account button
Then I click on reset PIN button
Then I choose navigate back button on the top
Then I close organization list menu 
Then I delete organization



Scenario:  Unicode characters C14096 C15282 C14226 C14227
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
Then I wait, until load Space
Then I open organization list menu
Then I choose "юзσερčččер@е商務кзамплýžáком" app and wait until loads
Then I try to find login element form from Act-On
Then I open organization list menu 
Then I choose "háčky a čárky" app and wait until loads
Then I delete organization  


Scenario: Failing - should be repared, on S3 mini is bug Workforce tier - 23 users C14581 C14571 C14575
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
Then I reinstall the Space



Scenario: Free tier - autodowngrade - checking unable to access on more than 10 apps and 11th user is blocked - failing beacuse of reinstal app C14591 C15398
And I login to Sace with org "free-tier.profiq.cz" email "pavel.juchelka@profiq.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I slide down in list of apps
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
Then I reinstall the Space


Scenario: Switch org during VPN getting connection C14148 C14279 C14970
And I enter "vpnjunipertesting.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "juniperuser@a.cz" and password "sesesesa2"
Then I press Log in button
Then I wait, until load Space 
Then I open organization list menu 
Then I choose "Act-On" app 
Then I enter VPN login "user1" and password "l0st1n"
Then I wait until is page loaded
Then I refresh page
Then I open organization list menu 
Then I switch organization  
Then I press "juniperuser@a.cz"
Then I wait until page under VPN is loaded
Then I try to find login element form from Act-On
Then I delete organization 

@failing
Scenario: F Login via SAML on blocked user/deuthorized/blocked device
And I enter "saml-org-with-blocked-user.profiq.cz" as the Organization name
Then I press Next button
Then I login to SAML OneLogin on user treti@se.cz
Then I wait for 2 seconds
Then I wait up to 10 seconds to see "This user has had their access revoked indefinitely by an administrator."
Then I press "OK"
Then I navigate back in SAML page
And I enter "saml-with-blocked-device.profiq.cz" as the Organization name
Then I press Next button
Then I login to SAML OneLogin on user treti@se.cz
Then I wait for 2 seconds
Then I wait up to 10 seconds to see "This device has been blocked"
Then I press "OK"
Then I navigate back in SAML page
And I enter "saml-org-with-deauthorized-device.profiq.cz" as the Organization name
Then I press Next button
Then I login to SAML OneLogin on user treti@se.cz
Then I wait for 2 seconds
Then I wait up to 10 seconds to see "This device has been blocked"
Then I press "OK"

Scenario: Login via SAML with incorrect certificate/endpoint url C14109 C14110
And I enter "incorrect-certifiacate-saml.profiq.cz" as the Organization name
Then I press Next button
Then I login to SAML OneLogin on user treti@se.cz
Then Space should not load
Then I navigate back in SAML page
And I enter "incorrect-certifiacate-saml.profiq.cz" as the Organization name
Then I press Next button
Then I login to SAML OneLogin on user treti@se.cz
Then Space should not load
Then I navigate back in SAML page


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
Then I enter user's email "pavel.other@profiq.cz" and password "s"
Then I choose Forgot password
Then I choose navigate back button on the top
Then I enter user's email "a@awww.cz" and password "sasasasa2"
Then I go back
Then I press Log in button
Then I wait up to 10 seconds to see "Login or password is incorrect"
Then I press "OK"
Then I enter user's email "invalid**email" and password "sasasasa2"
Then I go back
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
Then I wait, until load Space
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
Then I click on back button in entering email page
Then I press back button on the top
Then I press "longusernamelongusernamelongusername@longusernamelongusernamelongusername.uk"
Then I enter PIN require "2222dssdfggerweg3535&$%@\$^dfh$%^%$^dfggferwg"
Then I press Sign in
Then I delete organization  


@2676 @failing
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
Then I slide down in list of apps slightly
Then I choose "15" app and wait until loads
Then I open organization list menu 
Then I choose "16" app and wait until loads
Then I open organization list menu 
Then I choose "17" app and wait until loads
Then I open organization list menu 
Then I choose "18" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "19" app and wait until loads
Then I open organization list menu 
Then I choose "20" app and wait until loads
Then I open organization list menu 
Then I choose "21" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "22" app and wait until loads
Then I open organization list menu 
Then I choose "23" app and wait until loads
Then I open organization list menu 
Then I choose "3" app and wait until loads
Then I open organization list menu 
Then I choose "4" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "5" app and wait until loads
Then I open organization list menu 
Then I choose "6" app and wait until loads
Then I open organization list menu 
Then I choose "7" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps slightly
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
Then I slide down in list of apps slightly
Then I choose "15" app and wait until loads
Then I open organization list menu 
Then I choose "16" app and wait until loads
Then I open organization list menu 
Then I choose "17" app and wait until loads
Then I open organization list menu 
Then I choose "18" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "19" app and wait until loads
Then I open organization list menu 
Then I choose "20" app and wait until loads
Then I open organization list menu 
Then I choose "21" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "22" app and wait until loads
Then I open organization list menu 
Then I choose "23" app and wait until loads
Then I open organization list menu 
Then I choose "3" app and wait until loads
Then I open organization list menu 
Then I choose "4" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "5" app and wait until loads
Then I open organization list menu 
Then I choose "6" app and wait until loads
Then I open organization list menu 
Then I choose "7" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps slightly
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
Then I slide down in list of apps slightly
Then I choose "15" app and wait until loads
Then I open organization list menu 
Then I choose "16" app and wait until loads
Then I open organization list menu 
Then I choose "17" app and wait until loads
Then I open organization list menu 
Then I choose "18" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "19" app and wait until loads
Then I open organization list menu 
Then I choose "20" app and wait until loads
Then I open organization list menu 
Then I choose "21" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "22" app and wait until loads
Then I open organization list menu 
Then I choose "23" app and wait until loads
Then I open organization list menu 
Then I choose "3" app and wait until loads
Then I open organization list menu 
Then I choose "4" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "5" app and wait until loads
Then I open organization list menu 
Then I choose "6" app and wait until loads
Then I open organization list menu 
Then I choose "7" app and wait until loads
Then I open organization list menu 
Then I choose "8" app and wait until loads
Then I open organization list menu 
Then I choose "9" app and wait until loads
Then I try to find login element form from Act-On
Then I delete organization
Then I wait for 100 seconds


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
Then I slide down in list of apps slightly
Then I choose "15" app and wait until loads
Then I open organization list menu 
Then I choose "16" app and wait until loads
Then I open organization list menu 
Then I choose "17" app and wait until loads
Then I open organization list menu 
Then I choose "18" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "19" app and wait until loads
Then I open organization list menu 
Then I choose "20" app and wait until loads
Then I open organization list menu 
Then I choose "21" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "22" app and wait until loads
Then I open organization list menu 
Then I choose "23" app and wait until loads
Then I open organization list menu 
Then I choose "3" app and wait until loads
Then I open organization list menu 
Then I choose "4" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "5" app and wait until loads
Then I open organization list menu 
Then I choose "6" app and wait until loads
Then I open organization list menu 
Then I choose "7" app and wait until loads
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "8" app and wait until loads
Then I open organization list menu 
Then I choose "9" app and wait until loads
Then I try to find login element form from Act-On
Then I delete organization 



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
Then I slide down in list of apps slightly
Then I choose "15" app
Then I open organization list menu 
Then I choose "16" app
Then I open organization list menu 
Then I choose "17" app
Then I open organization list menu 
Then I choose "18" app
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "19" app
Then I open organization list menu 
Then I choose "20" app
Then I open organization list menu 
Then I choose "21" app
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "22" app
Then I open organization list menu 
Then I choose "23" app
Then I open organization list menu 
Then I choose "3" app
Then I open organization list menu 
Then I choose "4" app
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "5" app
Then I open organization list menu 
Then I choose "6" app
Then I open organization list menu 
Then I choose "7" app
Then I open organization list menu 
Then I slide down in list of apps slightly
Then I choose "8" app
Then I open organization list menu 
Then I choose "9" app
Then I try to find login element form from Act-On
Then I delete organization 


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
Then I login to SAML OneLogin on user treti@se.cz
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
Then I slide down in list of apps
Then I choose "wef" app and wait until loads
Then I delete organization 


@failing @2676
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
Then I wait, until load Space
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
Then I go back
Then I press Log in button
Then I wait up to 10 seconds to see "Login or password is incorrect"
Then I press "OK"
Then I enter user's email "user.who.get.complicated.pin@a.aa" and password "sasasasa2"
Then I go back
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
And I enter PIN "2222" and PIn confirmation "2222"
Then I press back button on the top
Then I press back button on the top
Then I go back
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
Then I wait, until load Space
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

Scenario: Shorter PIN than is required and PINs does not match C14122
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
And I enter PIN "22222#" and PIn confirmation "22222#"
Then I press Continue button
Then I wait up to 10 seconds to see "PIN should contain at least one letter"
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

Scenario: Open tab view and choose tab C14171
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
Then I press "Act-On :: Login" in tab name
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
Then I go back
Then I press Log in button
Then I wait up to 10 seconds to see "This device has been blocked"
Then I press "OK"
Then I enter user's email "userwithblockeddevice@a.cz" and password "sasasasa1"
Then I go back
Then I press Log in button
Then I wait up to 10 seconds to see "This device has been blocked"
Then I press "OK"
Then I click on back button in entering email page
And I enter "kekel.profiq.cz" as the Organization name
Then I press Next button
Then I login to SAML OneLogin on user dalsi@se.cz
Then I wait up to 20 seconds to see "This user has had their access revoked indefinitely by an administrator."
Then I press "OK"



Scenario: Creating multiple accounts (no influence by favorites)
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
Then I wait for 2 seconds
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app 
Then I open organization list menu 
Then I roll favorites
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On
Then I open organization list menu
Then I switch organization  
Then I press "a@a.cz"
Then I enter PIN require "2222"
Then I press Sign in
Then I wait, until load Space
Then I open organization list menu
Then I roll favorites
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On
Then I delete organization 
Then I press "a@aa.cz"
Then I enter PIN require "3333"
Then I press Sign in
Then I wait, until load Space
Then I roll favorites
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

Scenario: Login through SAML (+sliding in list of apps)
And I enter "kekel.profiq.cz" as the Organization name
Then I press Next button
Then I login to SAML OneLogin on user treti@se.cz
Then I wait, until load Space 
Then I open organization list menu  
Then I slide down in list of apps slightly
Then I choose "space manager" app
Then I delete organization 
Then I wait until I see entering organization name page

Scenario: Close new tab
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait until is page loaded
And I do a long press on a link
Then I open in new tab
Then I open tab view 
Then I wait up to 10 seconds to see "Google"
Then I wait up to 10 seconds to see "Aaron Haser's Tests"
Then I close new tab
Then I check only one tab exist
Then I delete organization from tab view

@failing @2794
Scenario: Open 51 new tabs with one user and delete all of them C15384 C14169 C14173
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait until is page loaded
And I do a long press on a link
Then I open in new tab
Then I open tab view 
Then I maximize parent tab
Then I open new tab 151 times
Then I open organization list menu
Then I switch organization 
Then I press "a@a.cz"
Then I enter PIN require "2222"
Then I press Sign in
Then I wait, until load Space
Then I open organization list menu
Then I choose "multitabs" app
Then I open tab view 
Then I close new tab
Then I scroll down
Then I scroll down
Then I scroll down
Then I close new tab 151 times
Then I close new tab
Then I delete organization


Scenario: Wipe device and add again (checking by favorites) - wipe device message is not showed(not implemented in tests yet) - Failed BROW-2645 - but it pass C14142
And I login to Sace with org "muhehe.profiq.cz" email "a@a.Cz" password "sasasasa1" and PINs "2222"
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
Then I choose "space manager" app
Then I enter into manager organization name "muhehe.profiq.cz" email "pavel.juchelka@profiq.cz" password "sasasasa1"
Then I wipe device in manager
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
Then I open action toolbar button
Then I add favorite
Then I open organization list menu 
Then I choose "space manager" app 
Then I open organization list menu 
Then I roll favorites
Then I open favorite "Act-On :: Login"
Then I try to find login element form from Act-On
Then I open organization list menu
Then I press Account button
Then I press delete organization
Then I press "Yes"
Then I wait until I see create organization page


Scenario: Autodowngraded org with assigned VPN C14590 C14126
And I login to Sace with org "downgradedorg.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "aa22"
Then I open organization list menu  
Then I choose "Act-On" app and wait until loads
Then I try to find login element form from Act-On
Then I delete organization


Scenario: Autodowngraded org with SAML C14592
And I enter "downgradedorg.profiq.cz" as the Organization name
Then I press Next button
Then I login to SAML OneLogin on user treti@se.cz
Then PIN entering page should not load


Scenario: Login on 6th device on one user with Autodowngraded org C14593 C14296
And I enter "downgradedorg.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "a@aa.cz" and password "sasasasa1"
Then I press Log in button
Then I wait up to 10 seconds to see "Your maximum devices quota has been reached."
Then I press "OK"

Scenario: Check you are not able to create favorite in new tab C14255 C14256 C14258 
And I login to Sace with org "muhehe.profiq.cz" email "a@a.Cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait until is page loaded
And I do a long press on a link
Then I open in new tab
Then I open action toolbar button
Then I check there is no favorite button
Then I delete organization

Scenario: Create favorite on opened pdf file C14269
And I login to Sace with org "icon-focused-org.profiq.cz" email "a@a.com" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "URL with pdf" app and wait until loads
Then I open action toolbar button
Then I add favorite
Then I open organization list menu 
Then I roll favorites
Then I open favorite "bitcoin.pdf"
Then I delete organization

Scenario: Try to add favorite in VPN in new tab C14264 C14265 C14268 C14270 C14272
And I login to Sace with org "testing.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I enter VPN login "space" and password "Spac3r"
Then I wait until page under VPN is loaded
Then I do a long press on a link of Aarons page
Then I open in new tab
Then I open action toolbar button
Then I check there is no favorite button
Then I press on a link
Then I navigate through history back
Then I navigate through history back
Then I navigate through history back
Then I navigate through history forward
Then I open tab view 
Then I wait up to 10 seconds to see "Aaron Haser's Tests"
Then I wait up to 10 seconds to see "Google"
Then I press "Google" in tab name
Then I navigate through history forward
Then I open tab view 
Then I wait up to 10 seconds to see "Aaron Haser's Tests"
Then I wait up to 10 seconds to see "Google"
Then I press "Google" in tab name
Then I refresh page
Then I wait until is page loaded
Then I open tab view 
Then I wait up to 10 seconds to see "Aaron Haser's Tests"
Then I wait up to 10 seconds to see "Google"
Then I press "Google" in tab name
Then I delete organization

@failing @2197
Scenario: Checking opening address URL in VPN
And I login to Sace with org "testing.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I enter VPN login "space" and password "Spac3r"
Then I wait until page under VPN is loaded
Then I do a long press on a link of Aarons page
Then I wait up to 10 seconds to see "http://senchaspacetests.azurewebsites.net/aaron.html"
Then I open in new tab
Then I open action toolbar button
Then I delete organization

Scenario: Open tab from new tab C14170 C14964 C14965 C14963
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu  
Then I choose "multitabs" app 
Then I wait until is page loaded
And I do a long press on a link of Aarons page
Then I open in new tab
Then I wait until is page loaded
And I do a long press on a link of Aarons page
Then I wait up to 10 seconds to see "http://senchaspacetests.azurewebsites.net/aaron.html"
Then I open in new tab
Then I wait until is page loaded
And I do a long press on a link of Aarons page
Then I open in new tab
Then I open tab view 
Then I scroll up
Then I scroll up
Then I close tab
Then I should not see action button
Then I close tab
Then I close tab
Then I check only one tab exist
Then I maximize parent tab
Then I delete organization

Scenario: Try to enter Unicode characters into Organization name C14179 C14190 C14200
And I enter "m2*áá.profiq.cz" as the Organization name
Then I press Next button
Then I wait up to 10 seconds to see "does not exist."
Then I press "OK"
And I enter "muhehe.profiq.cz" as the Organization name
Then I click on back button in entering org page
Then I press Next button
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I click on back button in entering email page
And I enter "m2*áá.profiq.cz" as the Organization name
Then I press Next button
Then I wait up to 10 seconds to see "does not exist."
Then I press "OK"
And I enter "kekel.profiq.cz" as the Organization name
Then I press Next button
Then I navigate back in SAML page
And I enter "m2*áá.profiq.cz" as the Organization name
Then I press Next button
Then I wait up to 10 seconds to see "does not exist."
Then I press "OK"
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu
Then I switch organization
Then I add new organization
And I enter "m2*áá.profiq.cz" as the Organization name
Then I press Next button
Then I wait up to 10 seconds to see "does not exist."
Then I press "OK"
Then I click on back button in entering org page
Then I press "a@a.cz"
Then I enter PIN require "2222"
Then I press Sign in
Then I wait, until load Space
Then I delete organization 




Scenario: Incorrect password/email in SAML C14102 C14103 C14105
And I enter "kekel.profiq.cz" as the Organization name
Then I press Next button
Then I login to SAML OneLogin on user treti@se.cz with incorrect password
Then I go back
Then I navigate back in SAML page
And I enter "kekel.profiq.cz" as the Organization name
Then I press Next button
Then I login to SAML OneLogin on user with non-existing email
Then I go back
Then I navigate back in SAML page
And I enter "kekel.profiq.cz" as the Organization name
Then I press Next button
Then I login to SAML OneLogin on email with and special chars
Then PIN entering page should not load
Then I navigate back in SAML page




Scenario: Re-send reset password email C14114
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I enter user's email "pavel.juchelka@profiq.cz" and password "a"
Then I choose Forgot password
Then I reset password
Then I wait up to 5 seconds to see "Please check your email."
Then I choose navigate back button on the top
Then I choose Forgot password
Then I reset password
Then I wait up to 5 seconds to see "Please check your email."
Then I choose navigate back button on the top
Then I press "Back"
Then I wait up to 10 seconds to see "New organization"

Scenario: C14155
And I enter "kekel.profiq.cz" as the Organization name
Then I press Next button
Then I login to SAML OneLogin on user treti@se.cz
Then I wait, until load Space 
Then I open organization list menu  
Then I press Account button
Then I push reset PIN button
Then I wait up to 10 seconds to see "PIN security has been disabled for this organization"
Then I press "OK"
Then I press delete organization
Then I press "Yes"
Then I wait until I see entering organization name page

Scenario: Saving file and opening file C14684 C14685
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu
Then I choose "savetest" app and wait until loads
Then I open action toolbar button
Then I save file
Then I should see file was saved
Then I open organization list menu 
Then I choose "sss2" app and wait until loads
Then I download an image
Then I open action toolbar button
Then I save file
Then I should see file was saved
Then I open organization list menu 
Then I choose "wef" app and wait until loads
Then I check file type selection and open image from sss
Then I open tab view 
Then I close new tab
Then I delete organization from tab view

Scenario: Saving file and deleting file C14663 C14671 C14680
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu
Then I choose "sss2" app and wait until loads
Then I download an image
Then I open action toolbar button
Then I save file
Then I should see file was saved
Then I open organization list menu 
Then I choose "wef" app and wait until loads
Then I delete image from sss
Then I wait up to 10 seconds to see "the-battle-of-koom"
Then I press "Yes"
Then I check file type selection and open image from sss
Then I open tab view 
Then I check there is no new tab
Then I delete organization from tab view 


Scenario: Save file and find it by substring match, saved from C14648 C14654 C14655
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu
Then I choose "sss2" app and wait until loads
Then I download an image
Then I open action toolbar button
Then I save file
Then I should see file was saved
Then I open organization list menu 
Then I choose "wef" app and wait until loads
Then I search by image keyword
Then I try that I can delete image
Then I refresh page
Then I search image by keyword jpg
Then I try that I can delete image
Then I refresh page
Then I search image by keyword sss
Then I try that I can delete image
Then I refresh page
Then I search image by keyword of non exist image
Then I try that I can not delete image
Then I delete organization

@nexus5
Scenario: Fullscreen mode C15477 C15478 C15479 C15480 C15481 C15482 C15483 C15484 C15485 C15487 C15491
And I login to Sace with org "muhehe.profiq.cz" email "full@screen.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu
Then I choose "fullscreen" app and wait until loads
Then I open action toolbar button
Then I enter fulscreen app
Then I wait up to 10 seconds to see "The application is in fullscreen mode\n\nYou can swipe down the status bar at any time to exit fullscreen mode"
Then I press "OK"
Then I check it is fullscreen
Then I leave fullscreen 
Then I open action toolbar button
Then I close action toolbar button
Then I enter fulscreen app
Then I wait up to 10 seconds to see "The application is in fullscreen mode\n\nYou can swipe down the status bar at any time to exit fullscreen mode"
Then I press "Never show this again"
Then I check it is fullscreen
Then I leave fullscreen 
Then I enter fulscreen app
Then I leave fullscreen 
Then I enter fulscreen app
Then I leave fullscreen 
Then I use check button and I am not in fullscreen
Then I should see message that you are not in full screen
Then I enter fulscreen app
Then I use check button and I am in fullscreen
Then I should see message that you are in full screen
Then I use check via bridge button and I am in fullscreen
Then I should see message that fullscreen is enabled
Then I leave fullscreen
Then I use check via bridge button and I am not in fullscreen
Then I should see message that fullscreen is disabled
Then I open tab view 
Then I maximize parent tab
Then I open organization list menu
Then I choose "myapp" app and wait until loads
Then I open organization list menu
Then I choose "fullscreen" app and wait until loads
Then I enter fulscreen app
Then I leave fullscreen
Then I open organization list menu
Then I switch organization
Then I press "full@screen.cz"
Then I enter PIN require "2222"
Then I press Sign in
Then I wait, until load Space
Then I open organization list menu
Then I choose "fullscreen" app and wait until loads
Then I enter fulscreen app
Then I leave fullscreen  
Then I delete organization


@failing @muhehe
Scenario: C14681 C14682 C14679
And I login to Sace with org "muhehe.profiq.cz" email "downlad@doc.xls" password "sasasasa1" and PINs "2222"
Then I open organization list menu
Then I choose "doc" app and wait until loads
Then I open action toolbar button
Then I save file
Then I should see file was saved
Then I open organization list menu 
Then I choose "xslx" app and wait until loads
Then I open action toolbar button
Then I save file
Then I should see file was saved
Then I open organization list menu 
Then I choose "pdf" app and wait until loads
Then I open action toolbar button
Then I save file
Then I should see file was saved
Then I open organization list menu
Then I choose "bigImage" app and wait until loads
Then I open big image from the link as new tab
Then I open action toolbar button
Then I save file
Then I should see file was saved
Then I open organization list menu 
Then I choose "wef" app and wait until loads
Then I open organization list menu 
Then I delete organization

@hhh
Scenario: API Collection Download
And I login to Sace with org "muhehe.profiq.cz" email "api@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu
Then I choose "Childviewapi" app and wait until loads
Then I choose Collection Download
Then I download some image in that API
Then I open downloaded image in that API
Then I open action toolbar button
Then I should see file was saved
Then I close action toolbar button
Then I open tab view 
Then I close new tab
Then I check only one tab exist
Then I maximize parent tab
Then I refresh page
Then I download some pdf in that API
Then I refresh page
Then I download some html in that API
Then I refresh page
Then I try download st with incorrect url in that API
Then I open downloaded pdf in that API
Then I open action toolbar button
Then I should see file was saved
Then I close action toolbar button
Then I open tab view 
Then I close new tab
Then I check only one tab exist
Then I maximize parent tab
Then I delete downloaded file in that API
Then I open downloaded image in that API
Then I delete organization



@chybisamsung
Scenario: Barcode test - with no scanned barcode
And I login to Sace with org "muhehe.profiq.cz" email "api@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu
Then I choose "Childviewapi" app and wait until loads
Then I choose Barcode test
Then I will scan something for 5 seconds
Then I refresh page
Then I delete organization

@chybisamsung
Scenario: App list test
And I login to Sace with org "muhehe.profiq.cz" email "api@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu
Then I choose "Childviewapi" app and wait until loads
Then I choose application list API
Then I enter empty app id and invalid app id
Then I refresh page
Then I enter app id with VPN
Then I cancel VPN auth form
Then I delete organization


Scenario: Open information C15777 C15778 C15779 C15780 C15781 C15782
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I open and check info and then I close it
Then I open info
Then I go back
Then I enter user's email "a@a.cz" and password "sasasasa1"
Then I press Log in button
And I enter PIN "2222" and PIn confirmation "2222"
Then I press Continue button
Then I wait, until load Space 
Then I open organization list menu
Then I switch organization 
Then I press "a@a.cz"
Then I open and check info and then I close it
Then I enter PIN require "2222"
Then I press Sign in
Then I wait, until load Space
Then I open organization list menu
Then I switch organization  
Then I add new organization
And I enter "muhehe.profiq.cz" as the Organization name
Then I press Next button
Then I open and check info and then I close it
Then I click on back button in entering email page
Then I click on back button in entering org page
Then I press "a@a.cz"
Then I open and check info and then I close it
Then I enter PIN require "2222"
Then I press Sign in
Then I wait, until load Space
Then I delete organization


Scenario: Child tab API
And I login to Sace with org "muhehe.profiq.cz" email "api@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu
Then I choose "Childviewapi" app and wait until loads
Then I choose Children API bridge calls
Then I open URL in Children API bridge calls
Then I open tab view 
Then I wait up to 10 seconds to see "Google"
Then I close new tab
Then I maximize parent tab
Then I refresh page
Then I open URL in Children API bridge calls
Then I open tab view 
Then I maximize parent tab
Then I select child
Then I close child
Then I open tab view 
Then I check there is no new tab
Then I maximize parent tab
Then I refresh page
Then I open URL in Children API bridge calls
Then I open tab view 
Then I maximize parent tab
Then I close all child
Then I open tab view 
Then I check there is no new tab
Then I maximize parent tab
Then I refresh page
Then I open jpg URL in Children API bridge calls
Then I open action toolbar button
Then I save file
Then I should see file was saved
Then I open organization list menu
Then I choose "wef" app and wait until loads
Then I delete image
Then I wait up to 10 seconds to see "image.jpg"
Then I press "Yes"
Then I delete organization


Scenario: Navigate from favorite to favorite
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"
Then I open organization list menu 
Then I choose "sddsshuhuhuhuhuhuhuhuhuhuhuhuhuhuuhuhuhuhuhuhuhuhuhhu" app 
Then I open action toolbar button
Then I add favorite
Then I open organization list menu  
Then I roll favorites
Then I choose "multitabs" app and wait until loads
Then I press on a link
Then I open action toolbar button
Then I add favorite
Then I open organization list menu 
Then I roll favorites
Then I roll second favorites in multitab app
Then I open favorite "Act-On :: Login"
Then I open organization list menu
Then I open favorite "Google"
Then I delete organization

@ell
Scenario: 1/3
And I login to Sace with org "muhehe.profiq.cz" email "a@a.cz" password "sasasasa1" and PINs "2222"

@ell
Scenario: 2/3
Then I enter PIN require "2222$юзσéěíερčččер@е商務кзамплр"
Then I press Sign in
Then I wait up to 10 seconds to see "The PIN is incorrect.You have 6 attempts remaining."
Then I press "OK"
Then I enter PIN require "2222"
Then I press Sign in
Then I wait, until load Space
Then I open organization list menu 
Then I switch organization 

@ell
Scenario: 3/3
Then I press "a@a.cz"
Then I enter PIN require "2222"
Then I press Sign in
Then I wait, until load Space
Then I delete organization










