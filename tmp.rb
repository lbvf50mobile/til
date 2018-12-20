# help answering on @vladz quesiton
def year_per_hour(array_salary_pey_year_in_dollars)
    work_hours_in_year = 8*5*4*12;
    p array_salary_pey_year_in_dollars.map{|x| x/work_hours_in_year}
end

year_per_hour([100_000, 160_000])