.class public final synthetic Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda15;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda15;->f$0:Z

    check-cast p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsSaved:Z

    return-void
.end method
