.class public final Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public args:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

.field public final synthetic this$0:Lcom/android/server/am/OomAdjusterModernImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->args:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/server/am/OomAdjusterModernImpl$Connection;

    move-object/from16 v5, p2

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->args:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    iget-object v4, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/ProcessRecord;

    iget-wide v6, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mNow:J

    iget v10, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mOomAdjReason:I

    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v10}, Lcom/android/server/am/OomAdjusterModernImpl$Connection;->computeHostOomAdjLSP(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZI)V

    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v11, p1

    check-cast v11, Lcom/android/server/am/OomAdjusterModernImpl$Connection;

    move-object/from16 v13, p2

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->args:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    iget-object v14, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mTopApp:Lcom/android/server/am/ProcessRecord;

    iget-wide v3, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mNow:J

    iget v5, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mOomAdjReason:I

    iget-boolean v1, v1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mFullUpdate:Z

    iget-object v6, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v7, v6, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    iget v6, v6, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    iget-object v12, v0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    move/from16 v18, v1

    move-object/from16 v17, v2

    move-wide v15, v3

    move/from16 v19, v5

    invoke-interface/range {v11 .. v19}, Lcom/android/server/am/OomAdjusterModernImpl$Connection;->computeHostOomAdjLSP(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/ProcessRecord;ZI)V

    iget-object v1, v0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v2, v2, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    if-eq v2, v7, :cond_1

    iget-object v1, v1, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordProcStateNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v1, v13}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    :cond_1
    iget-object v0, v0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v1, v1, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    if-eq v1, v6, :cond_2

    iget-object v0, v0, Lcom/android/server/am/OomAdjusterModernImpl;->mProcessRecordAdjNodes:Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;

    invoke-virtual {v0, v13}, Lcom/android/server/am/OomAdjusterModernImpl$ProcessRecordNodes;->offer(Lcom/android/server/am/ProcessRecord;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
