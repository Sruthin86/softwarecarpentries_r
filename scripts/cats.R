cats <- data.frame(Coat = c("Calico", "balck", "Tabby"), 
                   Weight =c(2.1, 5.0, 3.2), 
                   likes_catnip = c(1, 0, 1))
cats$Weight
cats$Coat
cats$likes_catnip
cats$Weight + 2
cats$Weight + cats$Coat
typeof(cats$Weight)
typeof(3.14) # Double type
typeof(1L) # Integers
typeof(1+1i)
typeof(TRUE)
typeof(cats$likes_catnip)
as.logical(cats$likes_catnip)
cats$likes_catnip <- as.logical(cats$likes_catnip)

cats$likes_catnip
as.double(cats$Coat)
c(3.14, TRUE, "banana")
typeof(c(3.14, TRUE, "banana"))
list(3.14, TRUE, "banana")
typeof(cats)
cats$Coat[1]
cats[1, ]
cats[, 1]
cats[1]
cats[[1]]
typeof(cats[[1]])
cats["Coat"]
cats[[1]]
cats[1,3]
cats[[1]]
list(cats[1,], cats[3,])
c(cats[1,], cats[3,])
cats[c(1,3), ]
cats$Weight < 4
cats[cats$Weight < 4,]




