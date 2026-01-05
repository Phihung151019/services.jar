.class public final synthetic Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/battery/MultiSbpController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/battery/MultiSbpController;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/battery/MultiSbpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/battery/MultiSbpController;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/server/battery/MultiSbpController;->processBatteryConnectionChanged()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/battery/MultiSbpController;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    invoke-virtual {v0}, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->check()V

    new-instance v1, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;

    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v0, v0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/android/server/battery/MultiSbpController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v2, v0}, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Z)V

    iget-object v0, v1, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "no_battery_mode"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;

    iget-object v2, p0, Lcom/android/server/battery/MultiSbpController;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    iget-object v3, p0, Lcom/android/server/battery/MultiSbpController;->mBatteryConnectionChecker:Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;-><init>(Landroid/os/Handler;Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;Lcom/android/server/BatteryService$BattCallbackImpl;)V

    iput-object v0, p0, Lcom/android/server/battery/MultiSbpController;->mBatteryConnectionProcessor:Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
