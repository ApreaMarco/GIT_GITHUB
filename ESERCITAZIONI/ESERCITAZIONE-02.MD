# ESERCITAZIONE 02 - Creazione di un Repository Remoto



2) Inizializziamo il repository locale
> Esegui:
```bash
git init
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~/Documents/GitProjects/Es02 (master)
$ git init
hint: Using 'master' as the name for the initial branch. This default branch name
hint: is subject to change. To configure the initial branch name to use in all
hint: of your new repositories, which will suppress this warning, call:
hint:
hint:   git config --global init.defaultBranch <name>
hint:
hint: Names commonly chosen instead of 'master' are 'main', 'trunk' and
hint: 'development'. The just-created branch can be renamed via this command:
hint:
hint:   git branch -m <name>
Initialized empty Git repository in C:/Users/marco/Documents/GitProjects/Es02/.git/
```
3) Chiediamo all'api di GitHub di crearci un repository remoto:
> Esegui:
```bash
curl -u matricola-CognomeNome:ghp_tokengenerato https://api.github.com/user/repos -d "{\"name\":\"Es02\"}"
```
> Output:
```bash
marco@DESKTOP-72VFU3G MINGW64 ~
$ curl -u matricola-CognomeNome:ghp_tokengenerato https://api.github.com/user/repos -d "{\"name\":\"Es02\"}"
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100    15    0     0  100    15      0     12  0:00:01  0:00:01 --:--:--    12{
  "id": 609079619,
  "node_id": "R_kgDOJE3RQw",
  "name": "Es02",
  "full_name": "matricola-CognomeNome/Es02",
  "private": false,
  "owner": {
    "login": "matricola-CognomeNome",
    "id": 105546344,
    "node_id": "U_kgDOBkqCaA",
    "avatar_url": "https://avatars.githubusercontent.com/u/105546344?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/matricola-CognomeNome",
    "html_url": "https://github.com/matricola-CognomeNome",
    "followers_url": "https://api.github.com/users/matricola-CognomeNome/followers",
    "following_url": "https://api.github.com/users/matricola-CognomeNome/following{/other_user}",
    "gists_url": "https://api.github.com/users/matricola-CognomeNome/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/matricola-CognomeNome/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/matricola-CognomeNome/subscriptions",
    "organizations_url": "https://api.github.com/users/matricola-CognomeNome/orgs",
    "repos_url": "https://api.github.com/users/matricola-CognomeNome/repos",
    "events_url": "https://api.github.com/users/matricola-CognomeNome/events{/privacy}",
    "received_events_url": "https://api.github.com/users/matricola-CognomeNome/received_events",
    "type": "User",
    "site_admin": false
  },
  "html_url": "https://github.com/matricola-CognomeNome/Es02",
  "description": null,
  "fork": false,
  "url": "https://api.github.com/repos/matricola-CognomeNome/Es02",
  "forks_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/forks",
  "keys_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/keys{/key_id}",
  "collaborators_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/collaborators{/collaborator}",
  "teams_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/teams",
  "hooks_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/hooks",
  "issue_events_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/issues/events{/number}",
  "events_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/events",
  "assignees_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/assignees{/user}",
  "branches_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/branches{/branch}",
  "tags_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/tags",
  "blobs_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/git/blobs{/sha}",
  "git_tags_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/git/tags{/sha}",
  "git_refs_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/git/refs{/sha}",
  "trees_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/git/trees{/sha}",
  "statuses_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/statuses/{sha}",
  "languages_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/languages",
  "stargazers_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/stargazers",
  "contributors_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/contributors",
  "subscribers_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/subscribers",
  "subscription_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/subscription",
  "commits_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/commits{/sha}",
  "git_commits_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/git/commits{/sha}",
  "comments_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/comments{/number}",
  "issue_comment_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/issues/comments{/number}",
  "contents_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/contents/{+path}",
  "compare_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/compare/{base}...{head}",
  "merges_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/merges",
  "archive_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/{archive_format}{/ref}",
  "downloads_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/downloads",
  "issues_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/issues{/number}",
  "pulls_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/pulls{/number}",
  "milestones_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/milestones{/number}",
  "notifications_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/notifications{?since,all,participating}",
  "labels_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/labels{/name}",
100  5769  100  5754  100    15   3639      9  0:00:01  0:00:01 --:--:--  3651 "releases_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/releases{/id}",
  "deployments_url": "https://api.github.com/repos/matricola-CognomeNome/Es02/deployments",
  "created_at": "2023-03-03T10:34:21Z",
  "updated_at": "2023-03-03T10:34:21Z",
  "pushed_at": "2023-03-03T10:34:21Z",
  "git_url": "git://github.com/matricola-CognomeNome/Es02.git",
  "ssh_url": "git@github.com:matricola-CognomeNome/Es02.git",
  "clone_url": "https://github.com/matricola-CognomeNome/Es02.git",
  "svn_url": "https://github.com/matricola-CognomeNome/Es02",
  "homepage": null,
  "size": 0,
  "stargazers_count": 0,
  "watchers_count": 0,
  "language": null,
  "has_issues": true,
  "has_projects": true,
  "has_downloads": true,
  "has_wiki": true,
  "has_pages": false,
  "has_discussions": false,
  "forks_count": 0,
  "mirror_url": null,
  "archived": false,
  "disabled": false,
  "open_issues_count": 0,
  "license": null,
  "allow_forking": true,
  "is_template": false,
  "web_commit_signoff_required": false,
  "topics": [

  ],
  "visibility": "public",
  "forks": 0,
  "open_issues": 0,
  "watchers": 0,
  "default_branch": "main",
  "permissions": {
    "admin": true,
    "maintain": true,
    "push": true,
    "triage": true,
    "pull": true
  },
  "allow_squash_merge": true,
  "allow_merge_commit": true,
  "allow_rebase_merge": true,
  "allow_auto_merge": false,
  "delete_branch_on_merge": false,
  "allow_update_branch": false,
  "use_squash_pr_title_as_default": false,
  "squash_merge_commit_message": "COMMIT_MESSAGES",
  "squash_merge_commit_title": "COMMIT_OR_PR_TITLE",
  "merge_commit_message": "PR_TITLE",
  "merge_commit_title": "MERGE_MESSAGE",
  "network_count": 0,
  "subscribers_count": 1
}
```
> Controlla il link:
>
>**"https://github.com/matricola-CognomeNome/Es02"**

4) Aggiungi il repository remoto
> Esegui:

git remote add origin git@github.com:matricola-CognomeNome/Es02.git

5) Controlla che il repository remoto sia stato aggiunto
> Esegui:

git remote -v

touch prova
git add .
git commit -m "initial"



git push -u origin master