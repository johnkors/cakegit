#addin nuget:?package=Cake.Git&version=0.17.0

var lastCommit = GitLogTip(".");

Information(@"Last commit {0}
    Short message: {1}
    Author:        {2}
    Authored:      {3:yyyy-MM-dd HH:mm:ss}
    Committer:     {4}
    Committed:     {5:yyyy-MM-dd HH:mm:ss}",
    lastCommit.Sha,
    lastCommit.MessageShort,
    lastCommit.Author.Name,
    lastCommit.Author.When,
    lastCommit.Committer.Name,
    lastCommit.Committer.When
    );