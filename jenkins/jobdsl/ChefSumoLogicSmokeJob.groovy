import alation.jobdsl.jobs.chef.ChefCookBookSmokeJob
import alation.jobdsl.DslEnv
import alation.jobdsl.EnvVar

class ChefSumoLogicSmokeJob extends ChefCookBookSmokeJob {

    @Override
    protected void generateInstance() {

        this.wrappers.credentialsBindingWrapper.with {
            chefDataBagEnabled = true
        }

        super.generateInstance()
    }
}
