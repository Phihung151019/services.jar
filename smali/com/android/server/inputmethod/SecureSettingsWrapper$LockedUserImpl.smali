.class public final Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;
.super Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mNonPersistentKeyValues:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(ILandroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;-><init>(ILandroid/content/ContentResolver;)V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final getInt(ILjava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->getInt(ILjava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/server/inputmethod/SecureSettingsWrapper$UnlockedUserImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final putInt(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/SecureSettingsWrapper$LockedUserImpl;->mNonPersistentKeyValues:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
