import alation.jobdsl.DslEnv
import alation.jobdsl.jobs.*
import alation.jobdsl.jobs.chef.*

ChefCookBook.bind(binding)

// jobs included with framework

if (DslEnv.targetFolderIsProjectRoot()) {
  new GithubPullRequestHookJob().generate()
  new GithubPushHookJob().generate()
  new ChefSumoLogicBuildJob().generate()
} else {
  new ChefSumoLogicSmokeJob().generate()
}
