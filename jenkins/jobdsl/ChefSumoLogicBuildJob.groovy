import alation.jobdsl.jobs.chef.ChefCookBookBuildJob
import alation.jobdsl.DslEnv
import alation.jobdsl.EnvVar

class ChefSumoLogicBuildJob extends ChefCookBookBuildJob {

    @Override
    protected void generateInstance() {

        this.wrappers.credentialsBindingWrapper.with {
            chefDataBagEnabled = true
        }

        super.generateInstance()
    }
}
