.class public abstract Lcom/android/server/inputmethod/InputMethodSettingsRepository;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sMutationLock:Ljava/lang/Object;

.field public static volatile sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sMutationLock:Ljava/lang/Object;

    sget-object v0, Lcom/android/server/inputmethod/ImmutableSparseArray;->EMPTY:Lcom/android/server/inputmethod/ImmutableSparseArray;

    sput-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    return-void
.end method

.method public static get(I)Lcom/android/server/inputmethod/InputMethodSettings;
    .locals 3

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v0, "sparseArray map userId: "

    const-string v1, "InputMethodSettingsRepo"

    invoke-static {p0, v0, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    move p0, v2

    :cond_4
    sget-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodSettings;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSettings;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodMap;

    sget-object v2, Lcom/android/server/inputmethod/InputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Lcom/android/server/inputmethod/InputMethodMap;-><init>(Landroid/util/ArrayMap;)V

    invoke-direct {v0, v1, p0}, Lcom/android/server/inputmethod/InputMethodSettings;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    return-object v0
.end method

.method public static put(ILcom/android/server/inputmethod/InputMethodSettings;)V
    .locals 2

    sget-object v0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p0

    sput-object p0, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
