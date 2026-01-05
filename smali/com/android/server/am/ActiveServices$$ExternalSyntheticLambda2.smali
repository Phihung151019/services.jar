.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/ActiveServices;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActiveServices;ILandroid/util/ArraySet;I)V
    .locals 0

    iput p4, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ActiveServices;

    iput p2, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$2:Landroid/util/ArraySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ActiveServices;

    iget v2, v0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$1:I

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$2:Landroid/util/ArraySet;

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v4, v3, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_9

    iget-object v7, v3, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_8

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_7

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ConnectionRecord;

    iget-object v13, v12, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v13, v13, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v13, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v13, v2, :cond_6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_6

    :cond_1
    iget-object v14, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v14, v2}, Lcom/android/server/am/ProcessList;->getUidProcStateLOSP(I)I

    move-result v14

    const/4 v15, 0x1

    const/4 v5, 0x2

    if-ne v14, v5, :cond_2

    move/from16 v16, v15

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    :goto_3
    if-ge v14, v5, :cond_3

    const/high16 v5, 0x100000

    invoke-virtual {v12, v5}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    const/4 v15, 0x0

    :goto_4
    if-nez v16, :cond_5

    if-eqz v15, :cond_4

    goto :goto_5

    :cond_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    :goto_5
    invoke-static {v14}, Landroid/os/PowerExemptionManager;->getReasonCodeFromProcState(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :cond_6
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_9
    :goto_7
    const/4 v0, 0x0

    :goto_8
    return-object v0

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/ActiveServices;

    iget v8, v0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$1:I

    iget-object v0, v0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda2;->f$2:Landroid/util/ArraySet;

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, v8, :cond_10

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v2, v9, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v10

    const/4 v11, 0x0

    move v12, v11

    :goto_9
    if-ge v12, v10, :cond_10

    iget-object v2, v9, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    iget-object v13, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    move v15, v11

    :goto_a
    if-ge v15, v14, :cond_f

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/util/ArrayList;

    move v2, v11

    :goto_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    iget-object v4, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-eqz v5, :cond_b

    :cond_a
    :goto_c
    move/from16 v16, v2

    move-object/from16 v17, v7

    goto :goto_d

    :cond_b
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, v8, :cond_a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_c

    :cond_c
    iget-object v3, v3, Lcom/android/server/am/ConnectionRecord;->clientPackageName:Ljava/lang/String;

    sget-object v6, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    move/from16 v16, v2

    move-object v2, v3

    move v3, v5

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsWhileInUsePermissionLocked(Ljava/lang/String;IILcom/android/server/am/ProcessRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result v5

    const/16 v17, 0x0

    move/from16 v18, v5

    move-object v5, v2

    move/from16 v2, v18

    move-object/from16 v18, v7

    move-object v7, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v18

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActiveServices;->shouldAllowFgsStartForegroundNoBindingCheckLocked(IIILjava/lang/String;Lcom/android/server/am/ServiceRecord;Landroid/app/BackgroundStartPrivileges;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v7, v17

    goto :goto_b

    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_9

    :cond_10
    const/4 v0, 0x0

    :goto_e
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
