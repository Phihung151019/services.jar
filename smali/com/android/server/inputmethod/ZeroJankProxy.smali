.class public final Lcom/android/server/inputmethod/ZeroJankProxy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mExecutor:Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;

.field public final mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;


# direct methods
.method public constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;Lcom/android/server/inputmethod/ZeroJankProxy$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mInner:Lcom/android/server/inputmethod/ZeroJankProxy$Callback;

    iput-object p1, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mExecutor:Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final offloadInner(Ljava/lang/Runnable;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ZeroJankProxy;->mExecutor:Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;

    new-instance v2, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda13;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/inputmethod/ZeroJankProxy$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Runnable;J)V

    invoke-virtual {p0, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda1;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
