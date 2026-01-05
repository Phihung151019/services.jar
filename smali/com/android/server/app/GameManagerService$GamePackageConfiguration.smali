.class public final Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAllowAngle:Z

.field public mAllowDownscale:Z

.field public mAllowFpsOverride:Z

.field public mBatteryModeOverridden:Z

.field public final mModeConfigLock:Ljava/lang/Object;

.field public final mModeConfigs:Landroid/util/ArrayMap;

.field public final mPackageName:Ljava/lang/String;

.field public mPerfModeOverridden:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .locals 4

    const-string v0, "GameManagerService_GamePackageConfiguration"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    iput-boolean v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    iput-boolean v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    iput-object p2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {p1, p2, v3, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->parseInterventionFromXml(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string/jumbo v3, "com.android.app.gamemode.performance.enabled"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    iget-object p1, p3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.app.gamemode.battery.enabled"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    iget-object p1, p3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.graphics.intervention.wm.allowDownscale"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    iget-object p1, p3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo p3, "com.android.graphics.intervention.angle.allowAngle"

    invoke-virtual {p1, p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Failed to get package metadata"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string/jumbo p1, "game_overlay"

    invoke-static {p1, p2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    :goto_1
    if-ge v1, p2, :cond_1

    aget-object p3, p1, v1

    :try_start_1
    new-instance v2, Landroid/util/KeyValueListParser;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/util/KeyValueListParser;-><init>(C)V

    invoke-virtual {v2, p3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    new-instance p3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    invoke-direct {p3, p0, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;-><init>(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Landroid/util/KeyValueListParser;)V

    invoke-virtual {p0, p3}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->addModeConfig(Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string p3, "Invalid config string"

    invoke-static {v0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    iput-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    iput-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    iput-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addModeConfig(Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;)V
    .locals 3

    iget v0, p1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->this$0:Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    iget v1, p1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const-string v0, "GameManagerService_GamePackageConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempt to add inactive game mode config for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final copyAndApplyOverride(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .locals 6

    new-instance v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object v1

    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    iput-boolean v3, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    iput-boolean v3, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    iput-boolean v3, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    iget-object v1, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object p1, p1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v0

    :catchall_2
    move-exception p0

    goto :goto_5

    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_4
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0

    :goto_5
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0
.end method

.method public final getAvailableGameModes()[I
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModesBitfield()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    new-array v0, v0, [I

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v2, v1, :cond_1

    shr-int v4, p0, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    aput v2, v0, v3

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getAvailableGameModesBitfield()I
    .locals 5

    sget v0, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v2, 0x12

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    if-eqz v0, :cond_1

    or-int/lit8 v2, v2, 0x8

    :cond_1
    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    if-eqz p0, :cond_2

    or-int/lit8 p0, v2, 0x4

    return p0

    :cond_2
    return v2

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getOrAddDefaultGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    .locals 4

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    invoke-direct {v3, p0, p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;-><init>(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getOverriddenGameModes()[I
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    if-eqz v3, :cond_0

    filled-new-array {v2, v1}, [I

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    filled-new-array {v2}, [I

    move-result-object p0

    return-object p0

    :cond_1
    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    if-eqz p0, :cond_2

    filled-new-array {v1}, [I

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public final parseInterventionFromXml(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "GameManagerService_GamePackageConfiguration"

    const-string/jumbo v1, "No android.game_mode_config meta-data found for package "

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "android.game_mode_config"

    invoke-virtual {p1, p2, v4}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p2, v3

    goto :goto_2

    :catchall_0
    move-exception p2

    move p3, v3

    goto :goto_3

    :cond_0
    :try_start_2
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v2, :cond_1

    if-eq v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "game-mode-config"

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo p2, "Meta-data does not start with game-mode-config tag"

    invoke-static {v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_1
    move-exception p2

    move p3, v2

    goto :goto_3

    :cond_2
    sget-object v1, Lcom/android/internal/R$styleable;->GameModeConfig:[I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    const/4 p3, 0x3

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    const/4 p3, 0x4

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    move p2, v2

    :goto_2
    if-eqz p1, :cond_3

    :try_start_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    return p2

    :goto_3
    if-eqz p1, :cond_4

    :try_start_4
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_0
    move p2, p3

    goto :goto_5

    :cond_4
    :goto_4
    throw p2
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_1
    move p2, v3

    :catch_2
    :goto_5
    iput-boolean v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    iput-boolean v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    iput-boolean v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    iput-boolean v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    iput-boolean v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    const-string p0, "Error while parsing XML meta-data for android.game_mode_config"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "[Name:"

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Modes: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final willGamePerformOptimizations(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOverridden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOverridden:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
