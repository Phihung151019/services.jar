.class public abstract Lcom/samsung/android/server/pm/install/ThermalInstallThrottlingUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static getInstallDelayByThermal(I)J
    .locals 5

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    if-ne p0, v0, :cond_0

    return-wide v1

    :cond_0
    const-string/jumbo p0, "dev.ssrm.app.install.standby"

    invoke-static {p0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-lez p0, :cond_1

    const-string p0, "Have install standby: "

    const-string/jumbo v0, "PackageManager"

    invoke-static {p0, v3, v4, v0}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v3

    :cond_1
    return-wide v1
.end method
