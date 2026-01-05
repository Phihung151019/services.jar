.class public final synthetic Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/dreams/DreamManagerService;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Landroid/os/Binder;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/os/PowerManager$WakeLock;

.field public final synthetic f$7:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;Landroid/os/Binder;ZZILandroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/dreams/DreamManagerService;

    iput-object p2, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$2:Landroid/os/Binder;

    iput-boolean p4, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$3:Z

    iput-boolean p5, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$4:Z

    iput p6, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$5:I

    iput-object p7, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$6:Landroid/os/PowerManager$WakeLock;

    iput-object p8, p0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$7:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/dreams/DreamManagerService;

    iget-object v5, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$1:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$2:Landroid/os/Binder;

    iget-boolean v6, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$3:Z

    iget-boolean v7, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$4:Z

    iget v8, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$5:I

    iget-object v9, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$6:Landroid/os/PowerManager$WakeLock;

    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService$$ExternalSyntheticLambda8;->f$7:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/dreams/DreamManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyActiveDreamChanged(Landroid/content/ComponentName;)V

    iget-object v10, v1, Lcom/android/server/dreams/DreamManagerService;->mDreamOverlayServiceName:Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "DreamController"

    const-string/jumbo v11, "Unable to bind dream service: "

    const-string/jumbo v2, "Starting dream: name="

    const-string/jumbo v12, "startDream"

    const-wide/32 v13, 0x20000

    invoke-static {v13, v14, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v12, v3, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v15, v3, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v16, v13

    :try_start_1
    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v14, v3, Lcom/android/server/dreams/DreamController;->mCloseNotificationShadeOptions:Landroid/os/Bundle;

    move-object/from16 v18, v4

    const/4 v4, 0x0

    invoke-virtual {v12, v15, v13, v4, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isPreviewMode="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", canDoze="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason=\'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v3, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    new-instance v2, Lcom/android/server/dreams/DreamController$DreamRecord;

    move-object/from16 v4, v18

    invoke-direct/range {v2 .. v9}, Lcom/android/server/dreams/DreamController$DreamRecord;-><init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    iput-object v2, v3, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iget-object v6, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    iget-object v2, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    invoke-static {v6, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "restarting same dream"

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/server/dreams/DreamController;->stopDreamInstance(ZLjava/lang/String;Lcom/android/server/dreams/DreamController$DreamRecord;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    iget-object v2, v3, Lcom/android/server/dreams/DreamController;->mPreviousDreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, v3, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamStartTime:J

    iget-object v0, v3, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v2, v3, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iget-boolean v2, v2, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xdf

    goto :goto_1

    :cond_2
    const/16 v2, 0xde

    :goto_1
    invoke-static {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.service.dreams.DreamService"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x800000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v2, v10}, Landroid/service/dreams/DreamService;->setDreamOverlayComponent(Landroid/content/Intent;Landroid/content/ComponentName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v3, Lcom/android/server/dreams/DreamController;->mContext:Landroid/content/Context;

    iget-object v5, v3, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v8}, Landroid/os/UserHandle;-><init>(I)V

    const v7, 0x4000001

    invoke-virtual {v0, v2, v5, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "bindService failed"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    :try_start_3
    iget-object v0, v3, Lcom/android/server/dreams/DreamController;->mCurrentDream:Lcom/android/server/dreams/DreamController$DreamRecord;

    iput-boolean v4, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    iget-object v1, v3, Lcom/android/server/dreams/DreamController;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mStopUnconnectedDreamRunnable:Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_2
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo v0, "unable to bind service: SecExp."

    invoke-virtual {v3, v4, v0}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception v0

    move-wide/from16 v16, v13

    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
