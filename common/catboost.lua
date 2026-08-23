---@meta
---
--- @class catboost
local catboost = {}

--- @class catboostModel
local catboostModel = {}

--- @class catboostPredictions
local catboostPredictions = {}

--- @param objectIndex number
--- @param predictionIndex number
--- @return number
function catboostPredictions.get(objectIndex, predictionIndex) end

--- @param features number[]
--- @param labels string[]?
--- @return catboostPredictions
function catboostModel.predict(features, labels) end

--- @param path string
--- @return catboostModel
function catboost.loadModel(path) end

return catboost
