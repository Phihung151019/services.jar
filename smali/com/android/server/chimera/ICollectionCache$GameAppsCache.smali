.class public final Lcom/android/server/chimera/ICollectionCache$GameAppsCache;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final gameApps:Ljava/util/Set;

.field public gms:Lcom/samsung/android/game/IGameManagerService;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public final notGameApps:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gameApps:Ljava/util/Set;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->notGameApps:Ljava/util/Set;

    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gms:Lcom/samsung/android/game/IGameManagerService;

    iput-object p1, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gameApps:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->notGameApps:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gms:Lcom/samsung/android/game/IGameManagerService;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->getGMSBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gms:Lcom/samsung/android/game/IGameManagerService;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gms:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v0, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->gameApps:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return v1

    :cond_3
    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->notGameApps:Ljava/util/Set;

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return v2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameManagerService RemoteException! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "ChimeraDataCache"

    invoke-static {p0, p1}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2
.end method
