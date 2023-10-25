
local function example1()
    local returned

    local summed = 0
    for number = 1,4 do
        summed = summed + number
    end

    --return summed -- return keyword

    ---[[
    returned = summed -- emulating "return-value"
    goto return_label -- emulating "return" keyword

    --- just before function's end
    :: return_label :: -- goto return_label: exit the function thus returning to this function's caller, from calle
    return returned

    --]]
end -- example1 function's end

print(example1())
