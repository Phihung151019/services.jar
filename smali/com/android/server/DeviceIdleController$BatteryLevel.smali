.class public final Lcom/android/server/DeviceIdleController$BatteryLevel;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public curr:F

.field public currTime:J

.field public prev:F

.field public prevTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prev:F

    iput v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->curr:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->prevTime:J

    iput-wide v0, p0, Lcom/android/server/DeviceIdleController$BatteryLevel;->currTime:J

    return-void
.end method
