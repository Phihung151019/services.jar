.class public final synthetic Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;->$r8$classId:I

    iput p1, p0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;->$r8$classId:I

    iget p0, p0, Lcom/android/server/autofill/FillResponseEventLogger$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mTotalDatasetsProvided:I

    :cond_0
    return-void

    :pswitch_0
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mDetectionPref:I

    return-void

    :pswitch_1
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mLatencyFillResponseReceivedMillis:I

    return-void

    :pswitch_2
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mRequestId:I

    return-void

    :pswitch_3
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mResponseStatus:I

    return-void

    :pswitch_4
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAppPackageUid:I

    return-void

    :pswitch_5
    iput p0, p1, Lcom/android/server/autofill/FillResponseEventLogger$FillResponseEventInternal;->mAvailableCount:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
