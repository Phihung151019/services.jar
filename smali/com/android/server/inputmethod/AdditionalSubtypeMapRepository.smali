.class public abstract Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sMutationLock:Ljava/lang/Object;

.field public static volatile sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

.field public static final sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sMutationLock:Ljava/lang/Object;

    sget-object v0, Lcom/android/server/inputmethod/ImmutableSparseArray;->EMPTY:Lcom/android/server/inputmethod/ImmutableSparseArray;

    sput-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    new-instance v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-direct {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    return-void
.end method

.method public static get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;
    .locals 3

    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    if-nez v0, :cond_0

    const-string/jumbo v0, "get(userId="

    const-string v1, ") is called before loadInitialDataAndGet(). Returning an empty map"

    const-string v2, "AdditionalSubtypeMapRepository"

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->EMPTY_MAP:Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static putAndSave(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V
    .locals 2

    sget-object v0, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v1

    sput-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    sget-object v1, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sWriter:Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$SingleThreadedBackgroundWriter;->scheduleWriteTask(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
