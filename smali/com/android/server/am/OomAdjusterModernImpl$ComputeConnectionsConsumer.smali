.class public final Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/OomAdjusterModernImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjusterModernImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;->mUids:Lcom/android/server/am/ActiveUids;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v3, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    iget v3, v3, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    iput v3, v2, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->this$0:Lcom/android/server/am/OomAdjusterModernImpl;

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl;->mComputeHostConsumer:Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;

    iput-object p1, p0, Lcom/android/server/am/OomAdjusterModernImpl$ComputeHostConsumer;->args:Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    invoke-static {v0, p0}, Lcom/android/server/am/OomAdjusterModernImpl;->forEachConnectionLSP(Lcom/android/server/am/ProcessRecord;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjusterModernImpl$ComputeConnectionsConsumer;->accept(Lcom/android/server/am/OomAdjusterModernImpl$OomAdjusterArgs;)V

    return-void
.end method
