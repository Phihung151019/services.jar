.class public final Lcom/android/server/input/KeyRemapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field public final mHandler:Landroid/os/Handler;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService$NativeImpl;Lcom/android/server/input/PersistentDataStore;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/KeyRemapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/input/KeyRemapper;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iput-object p3, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    new-instance p1, Landroid/os/Handler;

    new-instance p2, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/input/KeyRemapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/KeyRemapper;)V

    invoke-direct {p1, p4, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/input/KeyRemapper;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final getKeyRemapping()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "settings_new_keyboard_modifier_key"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeeded()V

    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/input/PersistentDataStore;->mKeyRemapping:Ljava/util/Map;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setKeyRemapping(Ljava/util/Map;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [I

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/input/KeyRemapper;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p0, v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setKeyRemapping([I[I)V

    return-void
.end method
