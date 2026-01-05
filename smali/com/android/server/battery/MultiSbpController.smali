.class public final Lcom/android/server/battery/MultiSbpController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

.field public final mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

.field public mBatteryConnectionProcessor:Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/BatteryService$BattCallbackImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/battery/MultiSbpController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/battery/MultiSbpController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/battery/MultiSbpController;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    new-instance p1, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    invoke-direct {p1}, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;-><init>()V

    iput-object p1, p0, Lcom/android/server/battery/MultiSbpController;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    return-void
.end method


# virtual methods
.method public final processBatteryConnectionChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/battery/MultiSbpController;->mBatteryConnectionProcessor:Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;

    const-string/jumbo v1, "[SS]MultiSbpController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "processBatteryConnectionChanged not yet initialized!"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/battery/MultiSbpController;->mBatteryConnectionProcessor:Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const-string/jumbo p0, "processBatteryConnectionChanged this request ignored because of same callback is already queued"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
