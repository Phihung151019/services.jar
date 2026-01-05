.class public final Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mFps:Ljava/lang/String;

.field public final mGameMode:I

.field public mLoadingBoostDuration:I

.field public mScaling:F

.field public mUseAngle:Z

.field public final synthetic this$0:Lcom/android/server/app/GameManagerService$GamePackageConfiguration;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->this$0:Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Landroid/util/KeyValueListParser;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->this$0:Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    const-string/jumbo v2, "mode"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    iget-boolean v4, p1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "downscaleFactor"

    invoke-virtual {p2, v4, v0}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    :cond_1
    :goto_0
    iput v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F

    iget-boolean v0, p1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "fps"

    invoke-virtual {p2, v0, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "useAngle"

    invoke-virtual {p2, v0, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z

    invoke-virtual {p1, v2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->willGamePerformOptimizations(I)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const-string/jumbo p1, "loadingBoost"

    invoke-virtual {p2, p1, v0}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized getFps()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized getScaling()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[Game Mode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mGameMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Scaling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mScaling:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",Use Angle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mUseAngle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",Fps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mFps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Loading Boost Duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->mLoadingBoostDuration:I

    const-string/jumbo v1, "]"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
