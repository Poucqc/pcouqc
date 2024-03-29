select ANIMAL_TYPE, coalesce(name, "No name") as NAME, SEX_UPON_INTAKE
from animal_ins