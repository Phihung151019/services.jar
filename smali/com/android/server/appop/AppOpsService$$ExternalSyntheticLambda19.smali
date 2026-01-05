.class public final synthetic Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/util/SparseLongArray;

.field public final synthetic f$1:Lcom/android/server/appop/AttributedOp;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseLongArray;Lcom/android/server/appop/AttributedOp;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->f$0:Landroid/util/SparseLongArray;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->f$1:Lcom/android/server/appop/AttributedOp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    iget v4, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->f$0:Landroid/util/SparseLongArray;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->f$1:Lcom/android/server/appop/AttributedOp;

    check-cast p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    sget-boolean v5, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    iget v5, p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    invoke-virtual {v4, v5, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v2

    if-eq v5, v1, :cond_0

    iget-wide v4, p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    iget-object p1, p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->f$0:Landroid/util/SparseLongArray;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda19;->f$1:Lcom/android/server/appop/AttributedOp;

    check-cast p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    sget-boolean v5, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget v5, p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mAttributionChainId:I

    if-eq v5, v1, :cond_2

    invoke-virtual {v4, v5, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    iget-wide v6, p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mStartTime:J

    cmp-long v1, v6, v1

    if-gez v1, :cond_2

    invoke-virtual {v4, v5, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_2
    iget-object p1, p1, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mClientId:Landroid/os/IBinder;

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
