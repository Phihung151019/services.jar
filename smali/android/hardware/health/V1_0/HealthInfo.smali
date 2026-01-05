.class public final Landroid/hardware/health/V1_0/HealthInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public batteryChargeCounter:I

.field public batteryCurrent:I

.field public batteryCycleCount:I

.field public batteryFullCharge:I

.field public batteryHealth:I

.field public batteryLevel:I

.field public batteryPresent:Z

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperature:I

.field public batteryVoltage:I

.field public chargerAcOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z

.field public maxChargingCurrent:I

.field public maxChargingVoltage:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/health/V1_0/HealthInfo;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    iget-boolean v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    iget-boolean v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iget-boolean v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget-boolean v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    if-eq v2, v3, :cond_d

    return v1

    :cond_d
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    if-eq v2, v3, :cond_e

    return v1

    :cond_e
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    if-eq v2, v3, :cond_10

    return v1

    :cond_10
    iget v2, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iget v3, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    iget-object p0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public final hashCode()I
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    move-result-object v4

    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Z)Ljava/lang/Integer;

    move-result-object v9

    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v11

    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v13

    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{.chargerAcOnline = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .chargerUsbOnline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .chargerWirelessOnline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .maxChargingCurrent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxChargingVoltage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const-string v2, "0x"

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-string/jumbo v7, "UNKNOWN"

    const/4 v8, 0x1

    if-ne v1, v8, :cond_0

    move-object v1, v7

    goto :goto_0

    :cond_0
    if-ne v1, v6, :cond_1

    const-string v1, "CHARGING"

    goto :goto_0

    :cond_1
    if-ne v1, v5, :cond_2

    const-string v1, "DISCHARGING"

    goto :goto_0

    :cond_2
    if-ne v1, v4, :cond_3

    const-string/jumbo v1, "NOT_CHARGING"

    goto :goto_0

    :cond_3
    if-ne v1, v3, :cond_4

    const-string v1, "FULL"

    goto :goto_0

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryHealth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    if-ne v1, v8, :cond_5

    goto :goto_1

    :cond_5
    if-ne v1, v6, :cond_6

    const-string v7, "GOOD"

    goto :goto_1

    :cond_6
    if-ne v1, v5, :cond_7

    const-string/jumbo v7, "OVERHEAT"

    goto :goto_1

    :cond_7
    if-ne v1, v4, :cond_8

    const-string v7, "DEAD"

    goto :goto_1

    :cond_8
    if-ne v1, v3, :cond_9

    const-string/jumbo v7, "OVER_VOLTAGE"

    goto :goto_1

    :cond_9
    const/4 v3, 0x6

    if-ne v1, v3, :cond_a

    const-string/jumbo v7, "UNSPECIFIED_FAILURE"

    goto :goto_1

    :cond_a
    const/4 v3, 0x7

    if-ne v1, v3, :cond_b

    const-string v7, "COLD"

    goto :goto_1

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryPresent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryVoltage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryTemperature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryCurrent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryCycleCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryFullCharge = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryChargeCounter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryTechnology = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
