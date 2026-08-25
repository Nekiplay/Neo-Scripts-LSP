--- @meta

---Single scoreboard objective object. Returned by scoreboard:get_objective, scoreboard:create_objective, scoreboard.objectives and scoreboard:get_display.
---Client changes are local; server changes are synced to clients automatically.
--- @class objective
--- @field name string Objective name
--- @field display_name string Display text (writable via string or component)
--- @field criteria string Criteria name (read only), e.g. "dummy"
--- @field render_type string Render type (writable): "integer" or "hearts"
local objective = {}

--- Reads a score without creating it
--- @param holder string Score holder name (player or fake player)
--- @return number? value Current value, nil if there is no score
function objective.get_score(holder) end

--- Sets a score, creates it if missing
--- @param holder string Score holder name
--- @param value integer New value
--- @return boolean success
function objective.set_score(holder, value) end

--- Adds a delta to a score, creates it if missing
--- @param holder string Score holder name
--- @param delta integer Amount to add (can be negative)
--- @return boolean success
function objective.add_score(holder, delta) end

--- Increments a score by 1 and returns the new value
--- @param holder string Score holder name
--- @return integer? value New value
function objective.increment_score(holder) end

--- Resets (deletes) a single score
--- @param holder string Score holder name
--- @return boolean success
function objective.reset_score(holder) end

--- Alias for reset_score
--- @param holder string Score holder name
--- @return boolean success
function objective.remove_score(holder) end

--- Lists all scores of this objective
--- @return {owner: string, value: integer, display: string?}[] scores
function objective.list_scores() end

---Scoreboard (tab) object. Returned by player.getScoreboard() and entity.scoreboard.
---Client changes are local; server changes are synced to clients automatically.
--- @class scoreboard
--- @field objectives objective[] All objectives
--- @field display_slots string[] Available display slot names: "list", "sidebar", "below_name", "sidebar.team.gold", ...
local scoreboard = {}

--- Returns an objective by name
--- @param name string Objective name
--- @return objective?
function scoreboard.get_objective(name) end

--- Alias for get_objective
--- @param name string Objective name
--- @return objective?
function scoreboard.getObjective(name) end

--- Creates a new objective
--- @param name string Objective name
--- @param criteria string? Criteria name, default "dummy" ("dummy", "trigger", "health", "deathCount", ...)
--- @param display_name string? Display name, defaults to the objective name
--- @param render_type string? Render type: "integer" (default) or "hearts"
--- @return objective|false result Created objective, or false if it already exists
function scoreboard.create_objective(name, criteria, display_name, render_type) end

--- Alias for create_objective
--- @param name string Objective name
--- @param criteria string? Criteria name, default "dummy"
--- @param display_name string? Display name, defaults to the objective name
--- @param render_type string? Render type: "integer" (default) or "hearts"
--- @return objective|false result Created objective, or false if it already exists
function scoreboard.add_objective(name, criteria, display_name, render_type) end

--- Removes an objective with all its scores
--- @param name string Objective name
--- @return boolean success
function scoreboard.remove_objective(name) end

--- Alias for remove_objective
--- @param name string Objective name
--- @return boolean success
function scoreboard.delete_objective(name) end

--- Reads a score without creating it
--- @param objective_name string Objective name
--- @param holder string Score holder name
--- @return number? value Current value, nil if there is no score
function scoreboard.get_score(objective_name, holder) end

--- Sets a score, creates it if missing
--- @param objective_name string Objective name
--- @param holder string Score holder name
--- @param value integer New value
--- @return boolean success
function scoreboard.set_score(objective_name, holder, value) end

--- Adds a delta to a score, creates it if missing
--- @param objective_name string Objective name
--- @param holder string Score holder name
--- @param delta integer Amount to add (can be negative)
--- @return boolean success
function scoreboard.add_score(objective_name, holder, delta) end

--- Resets (deletes) a single score
--- @param objective_name string Objective name
--- @param holder string Score holder name
--- @return boolean success
function scoreboard.reset_score(objective_name, holder) end

--- Alias for reset_score
--- @param objective_name string Objective name
--- @param holder string Score holder name
--- @return boolean success
function scoreboard.remove_score(objective_name, holder) end

--- Lists all scores of an objective
--- @param objective_name string Objective name
--- @return {owner: string, value: integer, display: string?}[] scores
function scoreboard.list_scores(objective_name) end

--- Returns the objective shown in a display slot
--- @param slot string|integer Slot name (see display_slots) or slot id
--- @return objective?
function scoreboard.get_display(slot) end

--- Shows an objective in a display slot, nil clears the slot
--- @param slot string|integer Slot name (see display_slots) or slot id
--- @param objective_name string? Objective name or nil to clear
--- @return boolean success
function scoreboard.set_display(slot, objective_name) end

return scoreboard
