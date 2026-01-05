.class public final Lcom/android/server/enterprise/plm/SystemStateTracker;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

.field public final mBootStateObservers:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mEbpfStateObservers:Ljava/util/List;

.field public mEdmServiceReady:Z

.field public final mEdmStateObservers:Ljava/util/List;

.field public mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

.field public final mLicenseStateObservers:Ljava/util/List;

.field public final mLockDetectionTracker:Lcom/android/server/enterprise/plm/LockDetectionTracker;

.field public mLockStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

.field public final mLockStateObservers:Ljava/util/List;

.field public mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

.field public final mPackageStateObservers:Ljava/util/List;

.field public final mTargetPackageNames:Ljava/util/List;

.field public mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

.field public final mUserStateObservers:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmStateObservers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEbpfStateObservers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateObservers:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mTargetPackageNames:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/server/enterprise/plm/ProcessAdapter;

    iget-object v2, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mTargetPackageNames:Ljava/util/List;

    iget-object v1, v1, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/BindServiceImpl;

    iget-object v1, v1, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$BootStateListener;

    iput-boolean p2, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmServiceReady:Z

    const-class p2, Lcom/android/server/enterprise/plm/LockDetectionTracker;

    monitor-enter p2

    :try_start_0
    sget-object p3, Lcom/android/server/enterprise/plm/LockDetectionTracker;->sInstance:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    if-nez p3, :cond_1

    new-instance p3, Lcom/android/server/enterprise/plm/LockDetectionTracker;

    invoke-direct {p3}, Lcom/android/server/enterprise/plm/LockDetectionTracker;-><init>()V

    sput-object p3, Lcom/android/server/enterprise/plm/LockDetectionTracker;->sInstance:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p2, Lcom/android/server/enterprise/plm/LockDetectionTracker;->sInstance:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    iput-object p2, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockDetectionTracker:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

    return-void

    :goto_2
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "Invalid message "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "handleMessage : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    const-string/jumbo v3, "SystemStateTracker"

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onLockStateChange(Landroid/os/Message;)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onEbpfStateChange(Landroid/os/Message;)V

    return-void

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onEdmStateChange(Landroid/os/Message;)V

    return-void

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onBootStateChange(Landroid/os/Message;)V

    return-void

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onUserStateChange(Landroid/os/Message;)V

    return-void

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onPackageStateChange(Landroid/os/Message;)V

    return-void

    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker;->onLicenseStateChange(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onBootStateChange(Landroid/os/Message;)V
    .locals 4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v0, "onBootStateChange("

    const-string v1, ")"

    const-string/jumbo v2, "SystemStateTracker"

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mBootStateObservers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v2, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    invoke-static {v3, v2, p1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onEbpfStateChange(Landroid/os/Message;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    iget-object v2, v1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/enterprise/plm/SystemStateTracker$EbpfType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const-string/jumbo v4, "uid"

    const-string/jumbo v5, "type"

    const-string/jumbo v6, "com.samsung.android.cmfa.framework"

    const-string/jumbo v7, "com.samsung.android.knox.intent.action.EBPF_STATE_CHANGE"

    const-string v9, ")"

    const-string/jumbo v10, "onEbpfStateChange("

    const-string/jumbo v11, "SystemStateTracker"

    const-string v12, ", "

    if-eqz v3, :cond_2

    const/4 v13, 0x1

    if-eq v3, v13, :cond_0

    return-void

    :cond_0
    iget-object v3, v1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v1, v1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEbpfStateObservers:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-virtual {v11, v2, v3, v1}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->notifyMessage(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "activeTimeMs"

    invoke-virtual {v1, v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_2
    iget-object v3, v1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v13, v1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj3:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v1, v1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj4:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v18, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEbpfStateObservers:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_4

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-virtual {v11}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v12

    if-nez v12, :cond_3

    move-object/from16 v19, v1

    move-object/from16 p1, v6

    goto :goto_2

    :cond_3
    move-object/from16 p1, v6

    new-instance v6, Lcom/android/server/enterprise/plm/common/PlmMessage;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v2, v6, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    iput-object v3, v6, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    iput-object v13, v6, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj3:Ljava/lang/Object;

    iput-object v1, v6, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj4:Ljava/lang/Object;

    move-object/from16 v19, v1

    invoke-static {v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    iget v11, v11, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    iput v11, v1, Landroid/os/Message;->what:I

    iput-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v12, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    move-object/from16 v6, p1

    move-object/from16 v1, v19

    goto :goto_1

    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v3, v18

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "userTimeUs"

    invoke-virtual {v1, v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "systemTimeUs"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final onEdmStateChange(Landroid/os/Message;)V
    .locals 5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onEdmStateChange("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SystemStateTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "edm service ready : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, p1}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iput-boolean p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmServiceReady:Z

    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mEdmStateObservers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    if-eqz p1, :cond_0

    const-string/jumbo v3, "ready"

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "not ready"

    :goto_1
    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget v2, v2, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    invoke-static {v4, v2, v3}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onLicenseStateChange(Landroid/os/Message;)V
    .locals 5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    iget-object v0, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onLicenseStateChange("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SystemStateTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-virtual {v3}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget v3, v3, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    invoke-static {v4, v3, v0, p1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onLockStateChange(Landroid/os/Message;)V
    .locals 9

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    iget-object v0, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x6

    if-eq v4, v5, :cond_4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    const-string v5, ""

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "PASSWORD"

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "PIN"

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "PASSWORD_OR_PIN"

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "PATTERN"

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "SMARTCARDNUMERIC"

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "NONE"

    :goto_0
    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj4:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v6, "onLockStateChange("

    const-string v7, ", "

    invoke-static {v4, v6, v7, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    const-string/jumbo v7, "SystemStateTracker"

    invoke-static {v4, v6, v7}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateObservers:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_6

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-virtual {v8, v1, v3, p1}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->notifyMessage(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.cmfa.framework"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "factorType"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "localTime"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final onPackageStateChange(Landroid/os/Message;)V
    .locals 5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    iget-object v0, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v1, "onPackageStateChange("

    const-string v2, ", "

    const-string v3, ")"

    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SystemStateTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mPackageStateObservers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-virtual {v3}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget v3, v3, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    invoke-static {v4, v3, v0, p1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onUserStateChange(Landroid/os/Message;)V
    .locals 4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/enterprise/plm/common/PlmMessage;

    iget-object p1, p1, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v0, "onUserStateChange("

    const-string v1, ")"

    const-string/jumbo v2, "SystemStateTracker"

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mUserStateObservers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/enterprise/plm/common/HandlerObserver;

    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/common/HandlerObserver;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v2, Lcom/android/server/enterprise/plm/common/HandlerObserver;->what:I

    invoke-static {v3, v2, p1}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final stopLicenseStateListener()V
    .locals 2

    const-string/jumbo v0, "enterprise_license_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LicenseStateListener;

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLicenseStateObservers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final stopLockStateListener()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockDetectionTracker:Lcom/android/server/enterprise/plm/LockDetectionTracker;

    iget-object v1, v1, Lcom/android/server/enterprise/plm/LockDetectionTracker;->mLockDetectionEventCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

    if-ne v2, v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateListener:Lcom/android/server/enterprise/plm/SystemStateTracker$LockStateListener;

    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker;->mLockStateObservers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
