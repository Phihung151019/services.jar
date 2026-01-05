.class public abstract Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$BatteryStatsHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Landroid/os/BatteryStatsInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/os/BatteryStatsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsInternal;

    sput-object v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$BatteryStatsHolder;->INSTANCE:Landroid/os/BatteryStatsInternal;

    return-void
.end method
