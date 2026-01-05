.class public final synthetic Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppRestrictionController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/usage/AppStandbyInternal;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppRestrictionController;ILcom/android/server/usage/AppStandbyInternal;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/AppRestrictionController;

    iput p2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/usage/AppStandbyInternal;

    iput p4, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/AppRestrictionController;

    iget v1, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/usage/AppStandbyInternal;

    iget p0, p0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda3;->f$3:I

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Ljava/lang/Integer;

    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v3, v3, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v3, 0x32

    if-ne p2, v3, :cond_0

    iget-object p2, v0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    new-instance v0, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;

    invoke-direct {v0, v2, p1, p0, p3}, Lcom/android/server/am/AppRestrictionController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/usage/AppStandbyInternal;Ljava/lang/String;ILjava/lang/Integer;)V

    invoke-virtual {p2, v1, p1, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p0, v0, Lcom/android/server/am/AppRestrictionController;->mActiveUids:Landroid/util/SparseArrayMap;

    const/4 p2, 0x0

    invoke-virtual {p0, v1, p1, p2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
