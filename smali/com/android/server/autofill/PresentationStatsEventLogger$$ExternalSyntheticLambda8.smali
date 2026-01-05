.class public final synthetic Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

.field public final synthetic f$1:Lcom/android/server/autofill/ViewState;

.field public final synthetic f$2:Landroid/view/autofill/AutofillValue;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/PresentationStatsEventLogger;Lcom/android/server/autofill/ViewState;Landroid/view/autofill/AutofillValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iput-object p2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/autofill/ViewState;

    iput-object p3, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda8;->f$2:Landroid/view/autofill/AutofillValue;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/autofill/ViewState;

    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda8;->f$2:Landroid/view/autofill/AutofillValue;

    check-cast p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mSessionStartTimestamp:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v3, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v3

    iget v4, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget p0, v1, Lcom/android/server/autofill/ViewState;->mState:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_1

    iput v2, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mAutofilledTimestampMs:I

    return-void

    :cond_1
    iget p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    iput v2, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedFirstTimestampMs:I

    :cond_2
    iput v2, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFieldModifiedLastTimestampMs:I

    return-void

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Bad view state for: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFocusedId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "PresentationStatsEventLogger"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
