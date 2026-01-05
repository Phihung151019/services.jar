.class public abstract Lcom/android/server/health/Utils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V
    .locals 4

    iget-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/health/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/HealthInfo;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    :cond_0
    iget-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    iput-boolean v2, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    iput-boolean v2, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v2, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    iget v2, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iput v2, v0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iget v2, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iput v2, v0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iput-boolean v2, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    iget-object v2, v1, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iput-object v2, v0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    iput v2, v0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    iget-wide v2, v1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    iput-wide v2, v0, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    iput v1, v0, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    iget-boolean v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    iput-boolean v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    iget-boolean v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    iput-boolean v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iget v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    iput v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    iget-boolean v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    iput-boolean v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    iget p1, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    iput p1, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    return-void
.end method
