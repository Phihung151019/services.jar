.class public final synthetic Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/PresentationStatsEventLogger;JI)V
    .locals 0

    iput p4, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iput-wide p2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;->f$1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-wide v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;->f$1:J

    check-cast p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    iget-wide v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    sub-long/2addr v1, v3

    long-to-int p0, v1

    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mImeAnimationFinishMs:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-wide v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda11;->f$1:J

    check-cast p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    iget-wide v3, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    sub-long/2addr v1, v3

    long-to-int p0, v1

    iput p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFillDialogReadyToShowMs:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
