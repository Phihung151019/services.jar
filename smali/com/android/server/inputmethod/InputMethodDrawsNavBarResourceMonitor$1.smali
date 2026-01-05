.class public final Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$callback:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$1;->val$callback:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor$1;->val$callback:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor;->evaluate(Landroid/content/Context;I)Z

    move-result p2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    :try_start_0
    new-instance p2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda26;

    const/4 v1, 0x1

    invoke-direct {p2, v1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda26;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
