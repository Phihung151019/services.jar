.class public final Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final brightness:F

.field public final isDefaultBrightnessConfig:Z

.field public final luxTimestamps:[J

.field public final luxValues:[F

.field public final powerBrightnessFactor:F

.field public final timestamp:J

.field public final uniqueDisplayId:Ljava/lang/String;

.field public final wasShortTermModelActive:Z


# direct methods
.method public constructor <init>(FFZZJLjava/lang/String;[F[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    iput p2, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    iput-boolean p3, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->wasShortTermModelActive:Z

    iput-boolean p4, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    iput-wide p5, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    iput-object p7, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->uniqueDisplayId:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->luxValues:[F

    iput-object p9, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->luxTimestamps:[J

    return-void
.end method
