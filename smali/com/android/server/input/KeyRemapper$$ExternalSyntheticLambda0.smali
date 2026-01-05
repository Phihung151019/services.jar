.class public final synthetic Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyRemapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyRemapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/KeyRemapper;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget-object p0, p0, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/KeyRemapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    new-instance v2, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3, v2}, Lcom/android/server/input/PersistentDataStore;->clearMappedKey(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    iget-object p1, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    new-instance v2, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v2}, Lcom/android/server/input/KeyRemapper;->setKeyRemapping(Ljava/util/Map;)V

    monitor-exit v0

    return v1

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw p1

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v2

    if-ne v0, p1, :cond_3

    :try_start_2
    iget-object p1, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1, v0}, Lcom/android/server/input/PersistentDataStore;->clearMappedKey(I)V

    goto :goto_3

    :catchall_2
    move-exception p1

    goto :goto_4

    :cond_3
    iget-object v3, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v3}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    iget-object v4, v3, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v4, v3, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, v3, Lcom/android/server/input/PersistentDataStore;->mDirty:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    :try_start_3
    iget-object p1, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    iget-object p1, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyRemapper;->setKeyRemapping(Ljava/util/Map;)V

    monitor-exit v2

    return v1

    :catchall_3
    move-exception p0

    goto :goto_5

    :goto_4
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    throw p1

    :goto_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0

    :cond_5
    iget-object p1, p0, Lcom/android/server/input/KeyRemapper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "settings_new_keyboard_modifier_key"

    invoke-static {p1, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/input/KeyRemapper;->getKeyRemapping()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyRemapper;->setKeyRemapping(Ljava/util/Map;)V

    return v1
.end method
