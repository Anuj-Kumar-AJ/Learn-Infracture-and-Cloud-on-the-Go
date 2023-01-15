# THis File contain all the git commands

1. list of all git subcommand<br>
    - `git help --all`

1. git version number<br>
    - `git --version`

1. add commit in reposotory<br>
    - `git commit -m "commitMessage"`

1. A fully qualified git commit command supplies a log message and an author:<br>
    - `git commit -m "Initial contents of public_html" \`<br>
                        `--author="Jon Loeliger <jdl@example.com>"`

1. to change commit message for latest commit<br>
    - `git commit --amend`

1. Adding a file to your reposotory<br>
    - to add perticulat file with filename<br>
                `git add "yourFileName"`

    - to add all file in that directory<br>
                `git add .`

1. to unstage the added file<br>
    - `git rm --cached "fileNameToUnstage"`

1. to check in-between status of the file , i.e between staged and commit<br>
    - `git status`

1. to see sequential history of your commit with reposotory<br>
    - `git log`

1. to  see detailed about perticular commit<br>
    - `git show "commitHashValue"`

1. show-branch, provides concise, one-line summaries for the current development branch<br>
    - Sumerry about latest commit<br>
                `git show-branch`
    - sumerry about "k" number of commit from last commit<br>
                `git show-branch --more=k`

1. Viewing commit difference<br>
    - `git diff hashValueOfYourCommit_1 \`<br>
                `hashValueOfYourCommit_2`<br>
        ( hash/value comes from " git log ", + show insertion and - show deletion )

1. Removing file from git reposotory(2 step)<br>
	- `git rm fileName`                       (stage the change)<br>
	- `git commit -m "FileRemoves"`           (commited the change)

1. Renaming file in git repo<br>
	- `mv PreviousName FinalName`<br>
	- `git rm PreviousName`<br>
	- `git add FinalName`<br>
	- `git commit -m "message"`

1. to make a clone of the repo from github <br>
	- `git clone "url"`

1. to establish an author name and email address that will be used on all the commits in every reposotories<br>
	
	- `git config --global user.name "UserName"`<br>
	- `git config --global user.email "User@email"`

1. to set a repository-specific name and email address that would override a --global setting, simply omit the --global flag<br>
	
	- `git config user.name "username"`
	- `git config user.email "userenail"`

1. to list the settings of all the variables collectively found in the 0complete set of configuration files: <br>
	
	- `git config -l`

1. to remove configuration setting<br>
	
	- `git config --unset --global setting_parameter(user.email)`	

1. Configuring an alias<br>
	- `git config --global alias."AliasName" \ `<br>
		`'log command which is converted to alias"`
	
    eg,	git config --global alias.show-graph \
		'log --graph --abbrev-commit --pretty=oneline'

