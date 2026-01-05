.class public final synthetic Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/dreams/DreamController$DreamRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamController$DreamRecord;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamController$DreamRecord;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    iget-object v1, v0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-ne v1, p0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/dreams/DreamController;->mResetScreenTimeoutOnUnexpectedDreamExit:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "DreamController"

    const-string/jumbo v3, "Resetting screen timeout"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, v0, Lcom/android/server/dreams/DreamController;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const-string/jumbo v0, "binder died"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    :cond_1
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    iget-object v1, v0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-ne v1, p0, :cond_3

    iget-boolean v1, v0, Lcom/android/server/dreams/DreamController;->mResetScreenTimeoutOnUnexpectedDreamExit:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v1, "DreamController"

    const-string/jumbo v3, "Resetting screen timeout"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, v0, Lcom/android/server/dreams/DreamController;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    :cond_2
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const-string/jumbo v0, "service disconnected"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    :cond_3
    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DreamController"

    const-string/jumbo v1, "Stubborn dream did not finish itself in the time allotted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v1, 0x1

    const-string/jumbo v2, "slow to finish"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopReason:Ljava/lang/String;

    return-void

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    if-nez v0, :cond_4

    const-string v0, "DreamController"

    const-string v1, "Bound dream did not connect in the time allotted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v0, 0x1

    const-string/jumbo v1, "slow to connect"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    :cond_4
    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    iget-object v1, v0, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    if-ne v1, p0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/dreams/DreamController;->stopPreviousDreams()V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
