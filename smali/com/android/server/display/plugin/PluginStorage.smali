.class public Lcom/android/server/display/plugin/PluginStorage;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final GLOBAL_ID:Ljava/lang/String; = "GLOBAL"


# instance fields
.field public final mEnabledTypes:Ljava/util/Set;

.field public final mListeners:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public final mPluginEventStorages:Ljava/util/Map;

.field public final mValues:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mValues:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mListeners:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mPluginEventStorages:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/plugin/PluginStorage;->mEnabledTypes:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getListenersForUpdateLocked(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;)Ljava/util/Set;
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mListeners:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;

    invoke-direct {v0}, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;-><init>()V

    iget-object v1, p0, Lcom/android/server/display/plugin/PluginStorage;->mListeners:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v2, "GLOBAL"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p2, p0, Lcom/android/server/display/plugin/PluginStorage;->mValues:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    invoke-direct {p2}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;-><init>()V

    iget-object p0, p0, Lcom/android/server/display/plugin/PluginStorage;->mValues:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance p0, Ljava/util/HashSet;

    iget-object p1, p2, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->mListeners:Ljava/util/Map;

    new-instance p2, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v1}, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v1

    :cond_2
    iget-object p0, v0, Lcom/android/server/display/plugin/PluginStorage$ListenersContainer;->mListeners:Ljava/util/Map;

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public updateGlobalValue(Lcom/android/server/display/plugin/PluginType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/display/plugin/PluginType<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "GLOBAL"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/display/plugin/PluginStorage;->updateValue(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public updateValue(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/display/plugin/PluginType<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mEnabledTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "PluginStorage"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "updateValue ignored for disabled type="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-static {p2, p1, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "PluginStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateValue, type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/display/plugin/PluginType;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/plugin/PluginStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/plugin/PluginStorage;->mValues:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;

    invoke-direct {v1}, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/plugin/PluginStorage;->mValues:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez p3, :cond_2

    iget-object p3, v1, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p3, v1, Lcom/android/server/display/plugin/PluginStorage$ValuesContainer;->mValues:Ljava/util/Map;

    check-cast p3, Ljava/util/HashMap;

    const-string v1, "GLOBAL"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, p2, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iget-object v1, p0, Lcom/android/server/display/plugin/PluginStorage;->mPluginEventStorages:Ljava/util/Map;

    new-instance v2, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/plugin/PluginEventStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/display/plugin/PluginEventStorage;->onValueUpdated(Lcom/android/server/display/plugin/PluginType;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/plugin/PluginStorage;->getListenersForUpdateLocked(Lcom/android/server/display/plugin/PluginType;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo p1, "PluginStorage"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateValue, notifying listeners="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Lcom/android/server/display/plugin/PluginStorage$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
