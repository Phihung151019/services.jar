.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda3;->f$1:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle$$ExternalSyntheticLambda3;->f$1:[I

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget v6, p0, v5

    const-string v7, "InputMethodManagerService"

    const-string/jumbo v8, "Start initialization for user="

    invoke-static {v6, v8, v7}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v7, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v7

    sget-object v8, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    iget-object v8, v8, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_4

    :cond_0
    if-nez v6, :cond_1

    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    const-string/jumbo v10, "system"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v6}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v8

    :goto_1
    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "inputmethod"

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    const-string/jumbo v10, "subtypes.xml"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Landroid/util/AtomicFile;

    const-string/jumbo v10, "input-subtypes"

    invoke-direct {v9, v8, v10}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/util/AtomicFile;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v9}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->loadFromFile(Landroid/util/AtomicFile;)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v8

    goto :goto_2

    :cond_2
    sget-object v8, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    :goto_2
    sget-object v9, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sMutationLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget-object v10, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    iget-object v10, v10, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v10, v6, v8}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v8

    sput-object v8, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_3
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    invoke-static {v6}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    move-result-object v8

    invoke-static {v2, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryRawInputMethodServiceMap(Landroid/content/Context;I)Lcom/android/server/inputmethod/RawInputMethodMap;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/inputmethod/UserData;->mRawInputMethodMap:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v10

    iget-object v11, v7, Lcom/android/server/inputmethod/UserData;->mIsUnlockingOrUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v9, v8, v4, v10}, Lcom/android/server/inputmethod/RawInputMethodMap;->toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object v8

    new-instance v9, Lcom/android/server/inputmethod/InputMethodSettings;

    invoke-direct {v9, v8, v6}, Lcom/android/server/inputmethod/InputMethodSettings;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    invoke-static {v6, v9}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    invoke-virtual {v1, v6}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v8

    invoke-static {v2, v8}, Lcom/android/server/inputmethod/InputMethodDrawsNavBarResourceMonitor;->evaluate(Landroid/content/Context;I)Z

    move-result v8

    iget-object v9, v7, Lcom/android/server/inputmethod/UserData;->mImeDrawsNavBar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v7, v7, Lcom/android/server/inputmethod/UserData;->mBackgroundLoadLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const-string v7, "InputMethodManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Complete initialization for user="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :goto_5
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    return-void
.end method
