age <- c(15, 20, 35, 11, 26, 85, 106, 17, 19, 18)
check = TRUE
check

while (check) 
{
  for (v1 in age)
  {
    if(v1 >= 18)
    {
      print(paste("person with age ", v1, "is eligible for vote"))
    }
    else
    {
      print(paste("person with age ", v1, "is not eligible for vote"))
    }
  }
  check = FALSE
}

