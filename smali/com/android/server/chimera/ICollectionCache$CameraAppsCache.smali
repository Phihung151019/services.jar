.class public final Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final apps:Ljava/util/Set;

.field public mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->apps:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->init()Z

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->init()Z

    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->apps:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "BigGameAppsCache"

    return-object p0

    :pswitch_0
    const-string p0, "CameraAppsCache"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final init()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/chimera/SystemRepository;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, v0, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "SystemRepositoryDefault"

    invoke-static {v3}, Lcom/android/server/chimera/SystemRepository;->convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/chimera/SystemRepository;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v3, "SystemRepositoryDefault"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/server/chimera/SystemRepository;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    iput-object v1, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->apps:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_1
    return v2

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_2
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->apps:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->apps:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->apps:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->init()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->apps:Ljava/util/Set;

    const-string v1, ","

    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
