.class public final Lcom/android/server/app/GameManagerService$LocalService;
.super Landroid/app/GameManagerInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/wm/CompatScaleProvider;


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0}, Landroid/app/GameManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final getResolutionScalingFactor(Ljava/lang/String;I)F
    .locals 2

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    sget v1, Lcom/android/server/app/GameManagerService;->$r8$clinit:I

    invoke-virtual {v0, p2, p1}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(ILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/app/GameManagerService;->getConfig(ILjava/lang/String;)Lcom/android/server/app/GameManagerService$GamePackageConfiguration;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getScaling()F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public final updateResolutionScalingFactorInternal(Ljava/lang/String;F)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v0, v0, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v2, v1, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v2, v1, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/app/GameManagerService;->getGameModeFromSettingsUnchecked(ILjava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "game_overlay"

    invoke-static {v2, p1}, Landroid/provider/DeviceConfig;->deleteProperty(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/android/server/app/GameManagerService$LocalService;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v2, p0, Lcom/android/server/app/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/android/server/app/GameManagerService;->updateResolutionScalingFactor(Ljava/lang/String;IFI)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
