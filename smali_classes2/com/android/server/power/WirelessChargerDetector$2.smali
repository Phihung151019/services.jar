.class public final Lcom/android/server/power/WirelessChargerDetector$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WirelessChargerDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/WirelessChargerDetector$2;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector$2;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    iget-object v0, v0, Lcom/android/server/power/WirelessChargerDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/WirelessChargerDetector$2;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    invoke-static {p0}, Lcom/android/server/power/WirelessChargerDetector;->-$$Nest$mfinishDetectionLocked(Lcom/android/server/power/WirelessChargerDetector;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
