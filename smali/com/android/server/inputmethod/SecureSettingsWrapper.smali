.class public abstract Lcom/android/server/inputmethod/SecureSettingsWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

.field public static final NOOP:Lcom/android/server/inputmethod/SecureSettingsWrapper$1;

.field public static volatile sContentResolver:Landroid/content/ContentResolver;

.field public static final sMutationLock:Ljava/lang/Object;

.field public static volatile sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sMutationLock:Ljava/lang/Object;

    sget-object v0, Lcom/android/server/inputmethod/ImmutableSparseArray;->EMPTY:Lcom/android/server/inputmethod/ImmutableSparseArray;

    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->CLONE_TO_MANAGED_PROFILE:Landroid/util/ArraySet;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->NOOP:Lcom/android/server/inputmethod/SecureSettingsWrapper$1;

    return-void
.end method

.method public static get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    .locals 2

    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    iget-object v0, v0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->NOOP:Lcom/android/server/inputmethod/SecureSettingsWrapper$1;

    return-object p0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;

    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;

    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    :goto_0
    invoke-static {p0, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object p0

    return-object p0
.end method

.method public static getInt(IILjava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->getInt(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putOrGet(ILcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;
    .locals 3

    sget-object v0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sMutationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p0

    sput-object p0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;

    if-eqz v2, :cond_1

    sget-object v1, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p0

    sput-object p0, Lcom/android/server/inputmethod/SecureSettingsWrapper;->sUserMap:Lcom/android/server/inputmethod/ImmutableSparseArray;

    monitor-exit v0

    return-object p1

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
