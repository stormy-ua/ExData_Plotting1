if(!exists("power_data")) {
    source("read_data.R")
}

png(file = "plot4.png", width = 480, height = 480,  bg = "transparent")

par(mfrow = c(2, 2))

# plot 1
with(power_data, plot(DateTime, Global_active_power, type = "l",
                      ylab = "Global Active Power", xlab = ""))
# plot 2
with(power_data, plot(DateTime, Voltage, type = "l",
                      ylab = "Voltage", xlab = "datetime"))
# plot 3
with(power_data, plot(DateTime, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""))
with(power_data, points(DateTime, Sub_metering_2, type = "l", col = "#FF0000"))
with(power_data, points(DateTime, Sub_metering_3, type = "l", col = "#0000FF"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1, col = c("#000000", "#FF0000", "#0000FF"))

# plot 4
with(power_data, plot(DateTime, Global_reactive_power, type = "l",
                      xlab = "datetime"))

dev.off()