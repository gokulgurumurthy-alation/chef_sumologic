import alation.jobdsl.*

class ChefCookBook {
    static void bind(binding) {
        DslEnv.bind(binding, 'chef_sumologic')
    }
}
