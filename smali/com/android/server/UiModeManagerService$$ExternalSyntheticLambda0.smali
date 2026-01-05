.class public final synthetic Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/UiModeManagerService;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/UiModeManagerService;

    iput-object p2, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/content/res/Resources;

    iget-object v2, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-class v3, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/twilight/TwilightManager;

    if-eqz v3, :cond_0

    iput-object v3, v0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v0, v1, p0, v3}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->updateSystemProperties()V

    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
