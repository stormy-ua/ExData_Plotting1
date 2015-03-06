if(!exists("power_data")) {
    source("read_data.R")
}

png(file = "plot1.png", width = 480, height = 480,  bg = "transparent")
with(power_data, hist(Global_active_power, xlab = "Global Active Power (kilowatts)",
                main = "Global Active Power", col = "#FF0000"))
dev.off()