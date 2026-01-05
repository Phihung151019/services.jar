.class public final Lcom/android/server/enterprise/license/LicenseThrottler;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static instance:Lcom/android/server/enterprise/license/LicenseThrottler;


# instance fields
.field public mapping:Ljava/util/HashMap;


# virtual methods
.method public final getTimeRemainingUntilNextLicenseRequest(Ljava/lang/String;)J
    .locals 11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/LicenseThrottler;->mapping:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;

    invoke-direct {v3}, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;-><init>()V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/license/LicenseThrottler;->mapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->blocked:Z

    const-string/jumbo v4, "LicenseThrottler"

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->delayStartTime:J

    iget-object v3, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->currentDelayLevel:Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    invoke-virtual {v3}, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;->getTime()J

    move-result-wide v9

    add-long/2addr v7, v9

    cmp-long v3, v5, v7

    if-gez v3, :cond_1

    const-string/jumbo p0, "Package request blocked due to many attemps"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide p0, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->delayStartTime:J

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->currentDelayLevel:Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    invoke-virtual {v0}, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;->getTime()J

    move-result-wide v0

    add-long/2addr p0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    sub-long/2addr p0, v0

    return-wide p0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->windowBorder:J

    cmp-long v3, v5, v7

    const/4 v5, 0x1

    if-gez v3, :cond_3

    iget p0, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->attemptCounter:I

    const/16 p1, 0x1e

    if-ge p0, p1, :cond_2

    const-string p0, "Increasing attempt counter"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->attemptCounter:I

    add-int/2addr p0, v5

    iput p0, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->attemptCounter:I

    return-wide v1

    :cond_2
    const-string/jumbo p0, "Starting blocking period for package"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->delayStartTime:J

    iput-boolean v5, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->blocked:Z

    iget-object v0, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->currentDelayLevel:Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    invoke-virtual {v0}, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;->getTime()J

    move-result-wide v0

    add-long/2addr p0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    iget-boolean v3, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->blocked:Z

    if-eqz v3, :cond_5

    const-string p0, "Increasing delay level"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iget-wide v3, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->FIXED_WINDOW_TIME_MILLIS:J

    add-long/2addr p0, v3

    iput-wide p0, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->windowBorder:J

    iput v5, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->attemptCounter:I

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->blocked:Z

    iget-object p0, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->currentDelayLevel:Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v3, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;->values:[Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    array-length v4, v3

    sub-int/2addr v4, v5

    if-ne p1, v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    add-int/2addr p0, v5

    aget-object p0, v3, p0

    :goto_1
    iput-object p0, v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->currentDelayLevel:Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    return-wide v1

    :cond_5
    const-string/jumbo v0, "Package being removed"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/license/LicenseThrottler;->mapping:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v1
.end method
