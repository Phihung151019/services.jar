.class public final synthetic Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/PresentationStatsEventLogger;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iput-object p2, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v1, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-boolean p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda0;->f$2:Z

    check-cast p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz p0, :cond_0

    iput v2, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedOnRefillCount:I

    iget-object p0, v0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance p1, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda14;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    iput v2, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFillFailureCount:I

    iput v2, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mViewFailedPriorToRefillCount:I

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p0, p1, Lcom/android/server/autofill/PresentationStatsEventLogger$PresentationStatsEventInternal;->mFailedAutofillIds:Landroid/util/ArraySet;

    return-void
.end method
