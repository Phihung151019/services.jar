.class public final synthetic Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/AmbientBrightnessStatsTracker$Clock;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AmbientBrightnessStatsTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    return-void
.end method


# virtual methods
.method public final elapsedTimeMillis()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    iget-object p0, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mInjector:Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
