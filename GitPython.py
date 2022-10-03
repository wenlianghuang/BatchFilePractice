#Have to add the passwoard at first?(linux/Mac)
#1.eval `ssh-agent -s`
#2.ssh-add ~/.ssh/id_rsa
    
#Have to add the password at first?(Windows)
#1.C:\Program Files\Git\cmd\start-ssh-agent.cmd
import git
with git.Repo.init(path='.') as repo:
    if len(repo.untracked_files) != 0:
        untracked_files = repo.untracked_files
        for i in range(len(untracked_files)):
            repo.index.add(items=[untracked_files[i]])
            repo.index.commit("new file")
        print('All the new file are committed')
    else:
        print('There is no untracted file')
    
    
    
    changedFile = [item.a_path for item in repo.index.diff(None)]
    if len(changedFile) == 0:
        print("The codes in git are all latest")
        pass
    else:
        for i in range(len(changedFile)):
            repo.index.add(items=[changedFile[i]])
            repo.index.commit("modified file")
    remote = repo.remote(name='origin')
    remote.push()