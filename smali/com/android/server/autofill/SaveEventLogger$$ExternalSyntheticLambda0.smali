.class public final synthetic Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    iput p3, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-wide p1, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;->f$0:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;->f$0:J

    check-cast p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

    iput-wide v0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveUiDisplayMillis:J

    return-void

    :pswitch_0
    iget-wide v0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;->f$0:J

    check-cast p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

    iput-wide v0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveRequestMillis:J

    return-void

    :pswitch_1
    iget-wide v0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;->f$0:J

    check-cast p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

    iput-wide v0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mLatencySaveFinishMillis:J

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
