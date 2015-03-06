if(!exists("power_data")) {
    source("read_data.R")
}

png(file = "plot3.png", width = 480, height = 480,  bg = "transparent")

with(power_data, plot(DateTime, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""))
with(power_data, points(DateTime, Sub_metering_2, type = "l", col = "#FF0000"))
with(power_data, points(DateTime, Sub_metering_3, type = "l", col = "#0000FF"))

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, col = c("#000000", "#FF0000", "#0000FF"))

dev.off()