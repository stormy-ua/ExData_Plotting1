if(!exists("power_data")) {
    source("read_data.R")
}

png(file = "plot2.png", width = 480, height = 480,  bg = "transparent")
with(power_data, plot(DateTime, Global_active_power, type = "l",
                      ylab = "Global Active Power (kilowatts)", xlab = ""))
dev.off()