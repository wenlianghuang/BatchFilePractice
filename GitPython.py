import git
with git.Repo.init(path='.') as repo:
    #if len(repo.untracked_files) != 0:
    #    untracked_files = repo.untracked_files
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