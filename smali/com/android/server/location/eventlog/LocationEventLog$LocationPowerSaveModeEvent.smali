.class public final Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLocationPowerSaveMode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;->mLocationPowerSaveMode:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$LocationPowerSaveModeEvent;->mLocationPowerSaveMode:I

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "THROTTLE_REQUESTS_WHEN_SCREEN_OFF"

    goto :goto_0

    :cond_1
    const-string p0, "FOREGROUND_ONLY"

    goto :goto_0

    :cond_2
    const-string p0, "ALL_DISABLED_WHEN_SCREEN_OFF"

    goto :goto_0

    :cond_3
    const-string p0, "GPS_DISABLED_WHEN_SCREEN_OFF"

    goto :goto_0

    :cond_4
    const-string/jumbo p0, "NO_CHANGE"

    :goto_0
    const-string/jumbo v0, "location power save mode changed to "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
