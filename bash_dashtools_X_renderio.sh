RENDER

source: https://www.youtube.com/watch?v=XWJBJoV5yww&ab_channel=CharmingData
Readme: Everytime i need to revise, just as long as i able to deploy the boiler app in this folder. Means i know all the steps again already.

################### MINIMUM STARTUP ##############

Open the APP folder. (Not the parent folder)
Usually the app folder would already have:
#Venv
#pip install dash
#pip install whatever the app's python scripts need.

pip install dash-tools
dashtools gui

sudo lsof -i :8050
kill -9 69607


#################### DASHTOOLS x render GUI ###############

Click Deploy Tab

File Explorer: Give Absolute path name of APP folder
GUI will listen this folder and string contents, update the Deployment Requirements accordingly.

1. File exists: src/app.py
2. File exists: render.yaml
3. File exists: requirements.txt
4. Project Requirement: Pushed to GitHub
5. Code exists: server = app.server in src/app.py

For 1: make sure there is a app.py file. Of course! Else deploy what sia?
For 5: make sure to add that line in proper location <right below app=dash()>
For 2: click render button to generate
For 3: click render button to generate. Debating whether to clear the python line in generated requirements.txt

COMPLEX PART: GITHUB

For 4a:
BEFORE EVERYTHING, make sure your CLI or PC is globally authorized with Personal Access Token
to your github account with repo permissions
If pushing fails, folloe below instructions
If already authorize, SKIP 4a.

If computer is new to github need google search and create PAT
Follow Official doc
https://docs.github.com/en/enterprise-server@3.4/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token
CURRENTLY MY murftech GITHUB ACCESS TOKEN IS: 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


For 4b: Connect APP folder to online github repo

Login to Github Browser
Create Repo. Boiler: repository_name, private repository
Empty Repo Page, has the CLI code to LINK OFFLINE FOLDER TO THE GITHUB REPO:
[Replace <whatever> with repository_name]
echo "# whatever" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/murftech/renderdashapptest.git
git push -u origin main


For 4c: push folder contents into the repo
git add .
git commit -m "first update"
git push


########################## render io DEPLOYMENT!!!! ##########################
When everything is ticked, click DEPLOY TO RENDER
Error: yaml file not available. LP: you must push only the app folder!!! not is parent
(took 20 minutes) (took 5 minutes)
once it says done, the go to the app page.
you will see the url, click it.


Q: can i change deployment location? right now is oregon maybe thats why take 20 minutes. 
A: (its okay 5 minutes only) no need change.

###########
### updating CRs
##########

##### over many days made many local edits ####
Assume Continously Git addcommitpush and make sure github repo is updated.

#### today ready to deploy changes ####
Just go to https://dashboard.render.com/
Manual Deploy > Deploy Latest Commit
(5 minutes)


