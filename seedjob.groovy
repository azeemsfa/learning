folder("$folderName") {
    displayName("$folderName")
    description("Folder for $folderName team")
}

folder("$folderName/$apiName") {
    description("Folder containing all jobs for $apiName")
}


multibranchPipelineJob("$folderName/$apiName/Build") {
    branchSources {
        git {
            id('123456789') // IMPORTANT: use a constant and unique identifier
            remote('https://github.com/azeemsfa/learning.git')
            credentialsId('github')
 
        }
    }
    orphanedItemStrategy {
        discardOldItems {
            numToKeep(20)
        }
    }
}
