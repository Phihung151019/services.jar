.class public final Lcom/android/server/am/pds/PDSTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/pds/PDSTrigger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/pds/PDSTrigger;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/am/pds/PDSTrigger$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x5

    const-wide/32 v2, 0x493e0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v8, v0, Lcom/android/server/am/pds/PDSTrigger$1;->$r8$classId:I

    packed-switch v8, :pswitch_data_0

    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "com.android.server.am.MARS_TRIGGER_MPSM_POLICY"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sget-object v9, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    const-string/jumbo v10, "PACKAGE_NAME"

    const-string/jumbo v11, "PDSTrigger"

    if-eqz v8, :cond_3

    iget-object v5, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v8, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iget-wide v14, v8, Lcom/android/server/am/pds/PDSTrigger;->mLastTimePolicyTrigger:J

    sub-long/2addr v12, v14

    cmp-long v2, v12, v2

    if-ltz v2, :cond_1

    move v7, v6

    :cond_1
    iput-boolean v7, v5, Lcom/android/server/am/pds/PDSTrigger;->isInDuration:Z

    iget-boolean v2, v8, Lcom/android/server/am/pds/PDSTrigger;->isMpsmActive:Z

    if-eqz v2, :cond_2

    if-eqz v2, :cond_5

    iget-boolean v2, v8, Lcom/android/server/am/pds/PDSTrigger;->isInDuration:Z

    if-eqz v2, :cond_5

    :cond_2
    iput-boolean v6, v8, Lcom/android/server/am/pds/PDSTrigger;->isMpsmActive:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/android/server/am/pds/PDSTrigger;->mLastTimePolicyTrigger:J

    const-string/jumbo v2, "broadcast received action : MARS_TRIGGER_MPSM_POLICY"

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    invoke-static {v3, v1}, Lcom/android/server/am/pds/PDSTrigger;->-$$Nest$mactionToString(Lcom/android/server/am/pds/PDSTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {v9, v4, v0, v1, v2}, Lcom/android/server/am/pds/PDSHandler;->sendRunPolicySpecificPkgMsgToMainHandler(IILjava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "com.android.server.am.MARS_CANCEL_MPSM_POLICY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "broadcast received action : MARS_CANCEL_MPSM_POLICY"

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iput-boolean v7, v1, Lcom/android/server/am/pds/PDSTrigger;->isMpsmActive:Z

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/android/server/am/pds/PDSTrigger;->mLastTimePolicyTrigger:J

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {v9, v4, v0, v1}, Lcom/android/server/am/pds/PDSHandler;->sendCancelPolicyMsgToMainHandler(IILjava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {v9, v4, v0, v5}, Lcom/android/server/am/pds/PDSHandler;->sendCancelPolicyMsgToMainHandler(IILjava/util/ArrayList;)V

    :cond_5
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.android.server.am.MARS_TRIGGER_UDS_POLICY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "PACKAGE_NAME"

    const-string/jumbo v8, "PDSTrigger"

    sget-object v9, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    if-eqz v3, :cond_7

    const-string/jumbo v3, "broadcast received action : MARS_TRIGGER_UDS_POLICY"

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iput-boolean v6, v3, Lcom/android/server/am/pds/PDSTrigger;->isUdsActive:Z

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v4, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    invoke-static {v4, v2}, Lcom/android/server/am/pds/PDSTrigger;->-$$Nest$mactionToString(Lcom/android/server/am/pds/PDSTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {v9, v1, v0, v2, v3}, Lcom/android/server/am/pds/PDSHandler;->sendRunPolicySpecificPkgMsgToMainHandler(IILjava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_7
    const-string/jumbo v3, "com.android.server.am.MARS_CANCEL_UDS_POLICY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "broadcast received action : MARS_CANCEL_UDS_POLICY"

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iput-boolean v7, v2, Lcom/android/server/am/pds/PDSTrigger;->isUdsActive:Z

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {v9, v1, v0, v2}, Lcom/android/server/am/pds/PDSHandler;->sendCancelPolicyMsgToMainHandler(IILjava/util/ArrayList;)V

    goto :goto_1

    :cond_8
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {v9, v1, v0, v5}, Lcom/android/server/am/pds/PDSHandler;->sendCancelPolicyMsgToMainHandler(IILjava/util/ArrayList;)V

    :cond_9
    :goto_1
    return-void

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    goto/16 :goto_4

    :cond_a
    const-string v8, "FIRST_ALARM_TRIGGER_ACTION"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    sget-object v9, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    if-eqz v8, :cond_d

    const-string/jumbo v8, "mPolicyIntentReceiver broadcast received action : "

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "PDSTrigger"

    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    sget-object v8, Lcom/android/server/am/PDSController$PDSControllerHolder;->INSTANCE:Lcom/android/server/am/PDSController;

    monitor-enter v8

    :try_start_0
    iget-boolean v10, v8, Lcom/android/server/am/PDSController;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    if-nez v10, :cond_d

    iget-object v8, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iget-boolean v8, v8, Lcom/android/server/am/pds/PDSTrigger;->isMpsmActive:Z

    if-eqz v8, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v8, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iget-wide v12, v8, Lcom/android/server/am/pds/PDSTrigger;->mLastTimePolicyTrigger:J

    sub-long/2addr v10, v12

    cmp-long v10, v10, v2

    if-gez v10, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iget-wide v12, v12, Lcom/android/server/am/pds/PDSTrigger;->mLastTimePolicyTrigger:J

    sub-long/2addr v10, v12

    sub-long/2addr v2, v10

    iput-wide v2, v8, Lcom/android/server/am/pds/PDSTrigger;->firstTrigger:J

    :cond_b
    iget-object v2, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iget-wide v2, v2, Lcom/android/server/am/pds/PDSTrigger;->firstTrigger:J

    invoke-virtual {v9, v4, v2, v3}, Lcom/android/server/am/pds/PDSHandler;->sendFirstTriggerMsgToMainHandler(IJ)V

    :cond_c
    iget-object v2, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iget-boolean v3, v2, Lcom/android/server/am/pds/PDSTrigger;->isUdsActive:Z

    if-eqz v3, :cond_d

    iget-wide v2, v2, Lcom/android/server/am/pds/PDSTrigger;->firstTrigger:J

    invoke-virtual {v9, v1, v2, v3}, Lcom/android/server/am/pds/PDSHandler;->sendFirstTriggerMsgToMainHandler(IJ)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_d
    :goto_2
    const-string/jumbo v2, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_10

    const-string/jumbo v3, "POLICY_NAME"

    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "udspolicy"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_3

    :cond_e
    const-string/jumbo v1, "mpsmpolicy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v4

    goto :goto_3

    :cond_f
    move v1, v7

    :goto_3
    const-string/jumbo v3, "PACKAGE_NAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v1, :cond_10

    if-eqz v2, :cond_10

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {v9, v1, v0, v5, v2}, Lcom/android/server/am/pds/PDSHandler;->sendRunPolicySpecificPkgMsgToMainHandler(IILjava/lang/String;Ljava/util/ArrayList;)V

    :cond_10
    :goto_4
    return-void

    :pswitch_2
    if-eqz p2, :cond_17

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    goto/16 :goto_5

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v1, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    sget-object v2, Lcom/android/server/am/PDSController$PDSControllerHolder;->INSTANCE:Lcom/android/server/am/PDSController;

    monitor-enter v2

    :try_start_2
    iput-boolean v6, v2, Lcom/android/server/am/PDSController;->mScreenOn:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iget-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mAlarm:Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_12
    sget-object v0, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    iget-object v0, v0, Lcom/android/server/am/pds/PDSHandler;->mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;

    if-nez v0, :cond_13

    goto :goto_5

    :cond_13
    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_14
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    sget-object v1, Lcom/android/server/am/PDSController$PDSControllerHolder;->INSTANCE:Lcom/android/server/am/PDSController;

    monitor-enter v1

    :try_start_4
    iput-boolean v7, v1, Lcom/android/server/am/PDSController;->mScreenOn:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v1

    iget-boolean v1, v1, Lcom/android/server/am/PDSController;->mIsPDSEnable:Z

    if-eqz v1, :cond_17

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    iget-boolean v1, v0, Lcom/android/server/am/pds/PDSTrigger;->isMpsmActive:Z

    if-nez v1, :cond_15

    iget-boolean v1, v0, Lcom/android/server/am/pds/PDSTrigger;->isUdsActive:Z

    if-eqz v1, :cond_17

    :cond_15
    iget-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_16

    new-instance v1, Landroid/content/Intent;

    const-string v2, "FIRST_ALARM_TRIGGER_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/am/pds/PDSTrigger;->user:Landroid/os/UserHandle;

    const/high16 v4, 0x4000000

    invoke-static {v2, v7, v1, v4, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    :cond_16
    iget-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mAlarm:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6, v2, v3, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_17
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
