def eyeRhyme(pairOfLines)
    pattern = /.*(.{3})\t.*(.{3})$/
    match = pattern.match(pairOfLines)
    p [match, match[1],match[2]]
    return match[1] == match[2]
end

p eyeRhyme("cough\tbough")