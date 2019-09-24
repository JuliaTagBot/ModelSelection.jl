"""
Add values to extras
"""
function addextras(data, result)
    data.extras[ModelSelection.generate_extra_key(CROSSVALIDATION_EXTRAKEY, data.extras)] = Dict(
        :datanames => result.datanames,
        :ttest => result.ttest,
        :kfolds => result.k,
        :tsetsize => result.s,
        :panel => data.panel,
        :time => data.time,
        :median => result.median_data,
        :average => result.average_data
    )
    return data
end
