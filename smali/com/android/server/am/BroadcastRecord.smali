.class public final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static CORE_DEFER_UNTIL_ACTIVE:Z = false

.field public static final EMPTY_RECEIVERS:Ljava/util/List;

.field static final LIMIT_PRIORITY_SCOPE:J = 0x1621b4c8L


# instance fields
.field public final alarm:Z

.field public anrCount:I

.field public final appOp:I

.field public beyondCount:I

.field public final blockedUntilBeyondCount:[I

.field public final callerApp:Lcom/android/server/am/ProcessRecord;

.field public final callerFeatureId:Ljava/lang/String;

.field public final callerInstantApp:Z

.field public final callerInstrumented:Z

.field public final callerPackage:Ljava/lang/String;

.field public final callerProcState:I

.field public final callingPid:I

.field public final callingUid:I

.field public final deferUntilActive:Z

.field public final delivery:[I

.field public final deliveryReasons:[Ljava/lang/String;

.field public dispatchClockTime:J

.field public dispatchRealTime:J

.field public dispatchTime:J

.field public enqueueClockTime:J

.field public enqueueRealTime:J

.field public enqueueTime:J

.field public final excludedPackages:[Ljava/lang/String;

.field public final excludedPermissions:[Ljava/lang/String;

.field public final filterExtrasForReceiver:Ljava/util/function/BiFunction;

.field public finishTime:J

.field public hadResultTo:Z

.field public final initialSticky:Z

.field public final intent:Landroid/content/Intent;

.field public final interactive:Z

.field public final mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

.field public final mBroadcastProcessedRecords:Landroid/util/ArrayMap;

.field public mCachedToShortString:Ljava/lang/String;

.field public mCachedToString:Ljava/lang/String;

.field public mCounted:Z

.field public final mMARsTargetReceiver:Ljava/util/ArrayList;

.field public mMatchingRecordsCache:Landroid/util/ArrayMap;

.field public final mWasDeferredByMARs:Ljava/util/ArrayList;

.field public nextReceiver:I

.field public final options:Landroid/app/BroadcastOptions;

.field public final ordered:Z

.field public originalEnqueueClockTime:J

.field public final originalStickyCallingUid:I

.field public final prioritized:Z

.field public final pushMessage:Z

.field public final pushMessageOverQuota:Z

.field public final queue:Lcom/android/server/am/BroadcastQueueImpl;

.field public final receivers:Ljava/util/List;

.field public final receiversDispatchTime:[J

.field public final receiversExtraTime:[Ljava/lang/String;

.field public final receiversFinishTime:[J

.field public final requiredPermissions:[Ljava/lang/String;

.field public final resolvedType:Ljava/lang/String;

.field public resultAbort:Z

.field public resultCode:I

.field public resultData:Ljava/lang/String;

.field public resultExtras:Landroid/os/Bundle;

.field public resultTo:Landroid/content/IIntentReceiver;

.field public resultToApp:Lcom/android/server/am/ProcessRecord;

.field public final scheduledTime:[J

.field public final shareIdentity:Z

.field public final sticky:Z

.field public final targetComp:Landroid/content/ComponentName;

.field public terminalCount:I

.field public final terminalTime:[J

.field public final timeoutExempt:Z

.field public final urgent:Z

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/android/server/am/BroadcastRecord;->EMPTY_RECEIVERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V
    .locals 31

    const/16 v23, 0x0

    const/16 v25, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v24, p23

    move-object/from16 v26, p24

    move/from16 v27, p25

    move-object/from16 v28, p26

    move/from16 v29, p27

    move-object/from16 v30, p28

    invoke-direct/range {v0 .. v30}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V
    .locals 7

    move-object/from16 v0, p14

    move-object/from16 v1, p17

    move/from16 v2, p21

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    if-eqz p2, :cond_c

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueueImpl;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iput-object p4, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iput p7, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 p1, p29

    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    move p1, p8

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    invoke-static {p7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const/16 v5, 0x7d0

    if-eq p1, v5, :cond_0

    if-eqz p3, :cond_1

    iget-object p1, p3, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz p1, :cond_1

    :cond_0
    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    move-object/from16 p1, p9

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 p1, p10

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    move-object/from16 p1, p11

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    move-object/from16 p1, p12

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    move/from16 p1, p13

    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz p15, :cond_2

    move-object/from16 p1, p15

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/server/am/BroadcastRecord;->EMPTY_RECEIVERS:Ljava/util/List;

    :goto_1
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/android/server/am/BroadcastRecord;->mMARsTargetReceiver:Ljava/util/ArrayList;

    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5, v6}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/android/server/am/BroadcastRecord;->mWasDeferredByMARs:Ljava/util/ArrayList;

    if-eqz p15, :cond_3

    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_2

    :cond_3
    move p3, v4

    :goto_2
    new-array v5, p3, [I

    iput-object v5, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    new-array v5, p3, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/android/server/am/BroadcastRecord;->calculateUrgent(Landroid/content/Intent;Landroid/app/BroadcastOptions;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    invoke-static {p7, v0, v1, v2, p2}, Lcom/android/server/am/BroadcastRecord;->calculateDeferUntilActive(ILandroid/app/BroadcastOptions;Landroid/content/IIntentReceiver;ZZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    move-object/from16 p2, p30

    invoke-static {p1, v2, p2}, Lcom/android/server/am/BroadcastRecord;->calculateBlockedUntilBeyondCount(Ljava/util/List;ZLcom/android/server/compat/PlatformCompat;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    new-array p2, p3, [J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    new-array p2, p3, [J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    move-object/from16 p2, p16

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    iput-object v1, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move/from16 p2, p18

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 p2, p19

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 p2, p20

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iput-boolean v2, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 p2, p22

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 p2, p23

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    invoke-static {p1, v2}, Lcom/android/server/am/BroadcastRecord;->isPrioritized([IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    move/from16 p1, p24

    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    iput v4, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    move/from16 p1, p27

    iput-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->isAlarmBroadcast()Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_3

    :cond_4
    move p1, v4

    :goto_3
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->isPushMessagingBroadcast()Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_4

    :cond_5
    move p1, v4

    :goto_4
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->isPushMessagingOverQuotaBroadcast()Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v3

    goto :goto_5

    :cond_6
    move p1, v4

    :goto_5
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_7

    move p1, v3

    goto :goto_6

    :cond_7
    move p1, v4

    :goto_6
    iput-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->isShareIdentityEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    move v3, v4

    :goto_7
    iput-boolean v3, p0, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    move-object/from16 p1, p28

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    move/from16 p1, p25

    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    if-eqz p15, :cond_9

    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_8

    :cond_9
    move p1, v4

    :goto_8
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    if-eqz p15, :cond_a

    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_9

    :cond_a
    move p1, v4

    :goto_9
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    if-eqz p15, :cond_b

    invoke-interface/range {p15 .. p15}, Ljava/util/List;->size()I

    move-result v4

    :cond_b
    new-array p1, v4, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    return-void

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Can\'t construct with a null intent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/server/am/BroadcastRecord;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->callerProcState:I

    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->callerInstrumented:Z

    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->userId:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mMARsTargetReceiver:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mWasDeferredByMARs:Ljava/util/ArrayList;

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultToApp:Lcom/android/server/am/ProcessRecord;

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueRealTime:J

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchRealTime:J

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iget-wide v0, p1, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iput-wide v0, p0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueueImpl;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->mBackgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->shareIdentity:Z

    iget-boolean p2, p1, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    iput-boolean p2, p0, Lcom/android/server/am/BroadcastRecord;->urgent:Z

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    iget p2, p1, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    iput p2, p0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    iget-object p2, p1, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    return-void
.end method

.method public static calculateBlockedUntilBeyondCount(Ljava/util/List;ZLcom/android/server/compat/PlatformCompat;)[I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/android/server/compat/PlatformCompat;",
            ")[I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :goto_0
    if-ge v2, v0, :cond_a

    aput v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x1621b4c8

    invoke-static {p0, v3, v4, p2}, Lcom/android/server/am/BroadcastRecord;->calculateChangeStateForReceivers(Ljava/util/List;JLcom/android/server/compat/PlatformCompat;)[Z

    move-result-object p1

    const/4 p2, -0x1

    move v5, p2

    move v6, v5

    move v7, v6

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v2, v0, :cond_8

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/android/server/am/BroadcastFilter;

    if-eqz v9, :cond_1

    check-cast v8, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v8}, Landroid/content/IntentFilter;->getPriority()I

    move-result v8

    goto :goto_2

    :cond_1
    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget v8, v8, Landroid/content/pm/ResolveInfo;->priority:I

    :goto_2
    if-nez v2, :cond_3

    aget-boolean v3, p1, v2

    if-nez v3, :cond_2

    move v7, v2

    :cond_2
    move v3, v8

    goto :goto_4

    :cond_3
    if-eq v8, v3, :cond_5

    if-eq v7, p2, :cond_4

    move v6, v7

    :cond_4
    add-int/lit8 v5, v2, -0x1

    move v7, p2

    move v4, v8

    goto :goto_3

    :cond_5
    move v10, v4

    move v4, v3

    move v3, v10

    :goto_3
    aget-boolean v9, p1, v2

    if-nez v9, :cond_6

    add-int/lit8 v7, v5, 0x1

    aput v7, v1, v2

    move v7, v4

    move v4, v3

    move v3, v7

    move v7, v2

    goto :goto_4

    :cond_6
    if-eq v8, v3, :cond_7

    if-eq v6, p2, :cond_7

    add-int/lit8 v8, v6, 0x1

    aput v8, v1, v2

    :cond_7
    move v10, v4

    move v4, v3

    move v3, v10

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    if-lez v0, :cond_a

    if-eq v5, p2, :cond_9

    if-ne v6, p2, :cond_a

    if-ne v7, p2, :cond_a

    :cond_9
    invoke-static {v1, p2}, Ljava/util/Arrays;->fill([II)V

    :cond_a
    return-object v1
.end method

.method public static calculateChangeStateForReceivers(Ljava/util/List;JLcom/android/server/compat/PlatformCompat;)[Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;J",
            "Lcom/android/server/compat/PlatformCompat;",
            ")[Z"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Z

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/server/am/BroadcastFilter;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    iget-object v4, v4, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v4, v4, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    :cond_0
    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_1
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_2

    :cond_1
    invoke-virtual {p3, p1, p2, v4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledInternalNoLogging(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v5

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v5

    :goto_2
    aput-boolean v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static calculateDeferUntilActive(ILandroid/app/BroadcastOptions;Landroid/content/IIntentReceiver;ZZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p3, :cond_1

    if-eqz p2, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->getDeferralPolicy()I

    move-result p1

    if-eq p1, v1, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    return v0

    :cond_5
    sget-boolean p1, Lcom/android/server/am/BroadcastRecord;->CORE_DEFER_UNTIL_ACTIVE:Z

    if-eqz p1, :cond_6

    invoke-static {p0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public static calculateUrgent(Landroid/content/Intent;Landroid/app/BroadcastOptions;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isInteractive()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isAlarmBroadcast()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static debugLog(Landroid/app/BroadcastOptions;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->isDebugLogEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static deliveryStateToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "DEFERRED"

    return-object p0

    :pswitch_1
    const-string p0, "FAILURE"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "SCHEDULED"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "TIMEOUT"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "SKIPPED"

    return-object p0

    :pswitch_5
    const-string p0, "DELIVERED"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "PENDING"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    iget-object p0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object p0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static getReceiverProcessName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    iget-object p0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object p0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    return-object p0

    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public static getReceiverUid(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    iget p0, p0, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    return p0

    :cond_0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public static isDeliveryStateTerminal(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static isPrioritized([IZ)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    array-length p1, p0

    if-lez p1, :cond_0

    aget p0, p0, v0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Landroid/content/pm/ResolveInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    instance-of v1, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/content/pm/ResolveInfo;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method


# virtual methods
.method public final calculateTypesForLogging()[I
    .locals 2

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->isForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :goto_0
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->alarm:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->interactive:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->prioritized:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-eqz v1, :cond_5

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->deferUntilActive:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessage:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_7
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->pushMessageOverQuota:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_8
    iget-boolean v1, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_9
    iget-boolean p0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz p0, :cond_a

    const/16 p0, 0x800

    invoke-virtual {v0, p0}, Landroid/util/IntArray;->add(I)V

    :cond_a
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne p3, v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v5, v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eq v5, p3, :cond_3

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    return v1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_2
    if-ltz v0, :cond_a

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Landroid/content/pm/ResolveInfo;

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_5

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz p2, :cond_5

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_5
    if-nez v4, :cond_6

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p3, :cond_9

    :cond_6
    if-nez p4, :cond_7

    return v3

    :cond_7
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v0, v1, :cond_8

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    :cond_8
    move v1, v3

    :cond_9
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_a
    iget p1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object p2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    return v1
.end method

.method public final containsReceiver(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/am/BroadcastRecord;->isReceiverEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final debugLog()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-static {p0}, Lcom/android/server/am/BroadcastRecord;->debugLog(Landroid/app/BroadcastOptions;)Z

    move-result p0

    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V
    .locals 16
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v5, "    "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v6, " to user "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    iget-object v7, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eq v6, v7, :cond_0

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  targetComp: "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "caller="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "null"

    :goto_0
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " pid="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " uid="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(I)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    const/4 v7, -0x1

    if-eqz v6, :cond_2

    array-length v6, v6

    if-gtz v6, :cond_3

    :cond_2
    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    if-eq v6, v7, :cond_4

    :cond_3
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "requiredPermissions="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  appOp="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(I)V

    :cond_4
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_5

    array-length v6, v6

    if-lez v6, :cond_5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "excludedPermissions="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->excludedPermissions:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    if-eqz v6, :cond_6

    array-length v6, v6

    if-lez v6, :cond_6

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "excludedPackages="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->excludedPackages:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v6, :cond_7

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "options="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "enqueueClockTime="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, " dispatchClockTime="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_8

    const-string v6, " originalEnqueueClockTime="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->originalEnqueueClockTime:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "dispatchTime="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {v8, v9, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v6, " ("

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v8, v12

    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v8, " since enq)"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    const-string v8, " finishTime="

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    invoke-static {v8, v9, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    iget-wide v8, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v3, v8

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, " since disp)"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v6, " receiverTime="

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v10, v11, v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_1
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz v3, :cond_a

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "anrCount="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    :cond_a
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v3, :cond_b

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    if-ne v3, v7, :cond_b

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-nez v3, :cond_b

    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->hadResultTo:Z

    if-eqz v3, :cond_d

    :cond_b
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "resultTo="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, " resultCode="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " hadResultTo="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->hadResultTo:Z

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz v3, :cond_c

    const-string v3, " resultData=(has data)"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string v3, " resultData="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    :goto_2
    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    if-eqz v3, :cond_e

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "resultExtras=(has extras)"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v3, :cond_f

    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v3, :cond_f

    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez v3, :cond_f

    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz v3, :cond_10

    :cond_f
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "resultAbort="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " ordered="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " sticky="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " initialSticky="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, " originalStickyCallingUid="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->originalStickyCallingUid:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    :cond_10
    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-eqz v3, :cond_11

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "nextReceiver="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    :cond_11
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "terminalCount="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->terminalCount:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(I)V

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_12

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_3

    :cond_12
    move v3, v4

    :goto_3
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    move v7, v4

    :goto_4
    if-ge v7, v3, :cond_19

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v9, v9, v7

    invoke-static {v9}, Lcom/android/server/am/BroadcastRecord;->deliveryStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v9, 0x20

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(C)V

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v12, v12, v7

    cmp-long v12, v12, v10

    if-eqz v12, :cond_13

    const-string/jumbo v12, "scheduled "

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v12, v12, v7

    iget-wide v14, v0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    sub-long/2addr v12, v14

    invoke-static {v12, v13, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(C)V

    :cond_13
    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v12, v12, v7

    cmp-long v12, v12, v10

    if-eqz v12, :cond_14

    const-string/jumbo v12, "terminal "

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->terminalTime:[J

    aget-wide v12, v12, v7

    iget-object v14, v0, Lcom/android/server/am/BroadcastRecord;->scheduledTime:[J

    aget-wide v14, v14, v7

    sub-long/2addr v12, v14

    invoke-static {v12, v13, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(C)V

    :cond_14
    const-string v9, "("

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->blockedUntilBeyondCount:[I

    aget v9, v9, v7

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, ") "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "#"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, ": "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    instance-of v9, v8, Lcom/android/server/am/BroadcastFilter;

    const-string v12, "      "

    const-string v13, "/ "

    const-string v14, "/ o:"

    const-string v15, "/ e:"

    const-string v10, "/ s:"

    if-eqz v9, :cond_15

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide v9, v9, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v9, v9, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    check-cast v8, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v8, v1, v12}, Lcom/android/server/am/BroadcastFilter;->dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_5

    :cond_15
    instance-of v9, v8, Landroid/content/pm/ResolveInfo;

    if-eqz v9, :cond_16

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->receiversDispatchTime:[J

    aget-wide v9, v9, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->receiversFinishTime:[J

    aget-wide v9, v9, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/am/BroadcastRecord;->receiversExtraTime:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "(manifest)"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    check-cast v8, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v8, v6, v12, v4}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    goto :goto_5

    :cond_16
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_5
    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->mWasDeferredByMARs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Deferred by mars at least one time"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_17
    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    aget-object v8, v8, v7

    if-eqz v8, :cond_18

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "reason: "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->deliveryReasons:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_18
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v10, 0x0

    goto/16 :goto_4

    :cond_19
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    iget v2, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-wide v0, 0x10900000002L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getBroadcastProcessedRecordsForTest()Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/BroadcastProcessedEventRecord;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mBroadcastProcessedRecords:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getReceiverIntent(Ljava/lang/Object;)Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverUid(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/BroadcastRecord;->filterExtrasForReceiver:Ljava/util/function/BiFunction;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    instance-of v0, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :cond_2
    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_3
    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public final isAssumedDelivered(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isForeground()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isMARsTargetReceiver(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mMARsTargetReceiver:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final toShortString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToShortString:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BroadcastRecord{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BroadcastRecord;->mCachedToString:Ljava/lang/String;

    return-object p0
.end method
