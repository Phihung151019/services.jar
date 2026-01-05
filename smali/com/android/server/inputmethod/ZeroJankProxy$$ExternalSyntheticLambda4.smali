.class public final synthetic Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/ZeroJankProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/ZeroJankProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/inputmethod/ZeroJankProxy;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ZeroJankProxy;->offloadInner(Ljava/lang/Runnable;)V

    return-void
.end method
