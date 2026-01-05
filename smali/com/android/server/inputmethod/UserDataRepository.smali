.class public final Lcom/android/server/inputmethod/UserDataRepository;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBindingControllerFactory:Ljava/util/function/IntFunction;

.field public final mMutationLock:Ljava/lang/Object;

.field public volatile mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

.field public final mVisibilityStateComputerFactory:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;


# direct methods
.method public constructor <init>(Ljava/util/function/IntFunction;Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mMutationLock:Ljava/lang/Object;

    sget-object v0, Lcom/android/server/inputmethod/ImmutableSparseArray;->EMPTY:Lcom/android/server/inputmethod/ImmutableSparseArray;

    iput-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    iput-object p1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mBindingControllerFactory:Ljava/util/function/IntFunction;

    iput-object p2, p0, Lcom/android/server/inputmethod/UserDataRepository;->mVisibilityStateComputerFactory:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda6;

    return-void
.end method


# virtual methods
.method public final forAllUserData(Ljava/util/function/Consumer;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    iget-object v0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final remove(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mMutationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
