.class public final Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/SystemEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemEventListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const-string/jumbo v0, "SystemEventListener"

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_10

    :pswitch_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mLazyBootCompleteListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v3, p1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/android/server/chimera/ChimeraManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/chimera/ChimeraManager;->mPerProcessNandswap:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    iget-object v4, v1, Lcom/android/server/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v1, v1, Lcom/android/server/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    invoke-virtual {v2, v4, v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->init(Lcom/android/server/chimera/SystemRepository;Lcom/android/server/chimera/ChimeraStrategy;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_f

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mGeniePsiMemEventListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v3, p1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/android/server/chimera/SystemEventListener$GeniePsiMemMonitorListener;

    check-cast v1, Lcom/android/server/chimera/PolicyHandler;

    sget-object v4, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD_GENIE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v1, v4, v2}, Lcom/android/server/chimera/PolicyHandler;->executePolicy(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;I)I

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mQuotaListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v3

    :goto_2
    if-ge v4, v1, :cond_4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/chimera/SystemEventListener$AlwaysRunningQuotaExceedListener;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v2, :cond_0

    move v6, v2

    goto :goto_3

    :cond_0
    move v6, v3

    :goto_3
    check-cast v5, Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v5, v6}, Lcom/android/server/chimera/PolicyHandler;->onQuotaKill(Z)V

    goto :goto_2

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mTimeOrTimeZoneChangedListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_4
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/server/chimera/psitracker/PSITracker;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onTimeOrTimeZoneChanged() action: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/chimera/psitracker/PSITracker;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v6, "PSITracker"

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v4}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "TIME_CHANGED"

    invoke-virtual {v2, v4}, Lcom/android/server/chimera/psitracker/PSITracker;->scheduleAvailMem240PeriodRecord(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_4
    iget-object p1, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    const-string/jumbo v1, "MSG_ONE_HOUR_TIMER"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/chimera/SystemEventListener;->mOneHourTimerListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_5
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/server/chimera/AbnormalFgsDetector;

    invoke-virtual {v2}, Lcom/android/server/chimera/AbnormalFgsDetector;->onOneHourTimer()V

    goto :goto_5

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/chimera/SystemEventListener;->startOneHourTimer()V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mCameraStateListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_6
    if-ge v3, p1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/android/server/chimera/SystemEventListener$CameraStateListener;

    check-cast v1, Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v1}, Lcom/android/server/chimera/PolicyHandler;->onCameraClose()V

    goto :goto_6

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mCameraStateListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_7
    if-ge v3, p1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/android/server/chimera/SystemEventListener$CameraStateListener;

    check-cast v1, Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v1}, Lcom/android/server/chimera/PolicyHandler;->onCameraOpen()V

    goto :goto_7

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_8
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    check-cast v2, Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v2, v4}, Lcom/android/server/chimera/PolicyHandler;->onAppLaunchIntent(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_8
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mDeviceIdleListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_9
    if-ge v3, p1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;

    check-cast v1, Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v1}, Lcom/android/server/chimera/PolicyHandler;->onDeviceIdle()V

    goto :goto_9

    :pswitch_9
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_10

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 p0, 0x0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_a
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mMediaScanFinishedListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_a
    if-ge v3, p1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/android/server/chimera/ChimeraManager;

    invoke-virtual {v1}, Lcom/android/server/chimera/ChimeraManager;->onMediaScanFinished()V

    goto :goto_a

    :pswitch_b
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v1, v3

    :goto_b
    if-ge v1, p1, :cond_4

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;

    check-cast v2, Lcom/android/server/chimera/PolicyHandler;

    iput-boolean v3, v2, Lcom/android/server/chimera/PolicyHandler;->mIsCarMode:Z

    goto :goto_b

    :pswitch_c
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_c
    if-ge v3, p1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;

    check-cast v1, Lcom/android/server/chimera/PolicyHandler;

    iput-boolean v2, v1, Lcom/android/server/chimera/PolicyHandler;->mIsCarMode:Z

    goto :goto_c

    :pswitch_d
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_d
    if-ge v3, p1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    check-cast v1, Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;

    check-cast v1, Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v1}, Lcom/android/server/chimera/PolicyHandler;->onHomeLaunched()V

    goto :goto_d

    :pswitch_e
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mPsiMemEventListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_e
    if-ge v3, v1, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/android/server/chimera/SystemEventListener$PsiMemMonitorListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    check-cast v2, Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {v2, v4}, Lcom/android/server/chimera/PolicyHandler;->onPsiMemMonitorEvent(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_e

    :goto_f
    invoke-static {v0}, Lcom/android/server/chimera/SystemRepository;->convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Handler execute with exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
