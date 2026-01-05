.class public final Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final FIXED_WINDOW_TIME_MILLIS:J

.field public attemptCounter:I

.field public blocked:Z

.field public currentDelayLevel:Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

.field public delayStartTime:J

.field public windowBorder:J


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;->LVL1:Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    invoke-virtual {v0}, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->FIXED_WINDOW_TIME_MILLIS:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->windowBorder:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->delayStartTime:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->attemptCounter:I

    iput-boolean v1, p0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->blocked:Z

    iput-object v0, p0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->currentDelayLevel:Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PackageStatus(windowBorder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->windowBorder:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", delayStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->delayStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", DelayLvL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->currentDelayLevel:Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus$DelayLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attemptCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->attemptCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/enterprise/license/LicenseThrottler$PackageStatus;->blocked:Z

    const-string v1, ")"

    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
