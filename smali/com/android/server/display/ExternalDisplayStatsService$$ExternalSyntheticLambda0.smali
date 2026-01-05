.class public final synthetic Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/ExternalDisplayStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/ExternalDisplayStatsService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/ExternalDisplayStatsService;

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsInitialized:Z

    if-eqz v0, :cond_0

    const-string p0, "ExternalDisplayStatsService"

    const-string/jumbo v0, "scheduleInit is called but already initialized"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsInitialized:Z

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-static {v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractiveExternalDisplays:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-object v2, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v7, 0x4

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractivityReceiver:Lcom/android/server/display/ExternalDisplayStatsService$2;

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    :cond_1
    iget-object v0, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mAudioPlaybackCallback:Lcom/android/server/display/ExternalDisplayStatsService$1;

    invoke-virtual {v0, p0, v6}, Landroid/media/AudioManager;->registerAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;Landroid/os/Handler;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsInitialized:Z

    if-nez v0, :cond_3

    const-string p0, "ExternalDisplayStatsService"

    const-string/jumbo v0, "scheduleDeinit is called but never initialized"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsInitialized:Z

    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-object v1, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractivityReceiver:Lcom/android/server/display/ExternalDisplayStatsService$2;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    :cond_4
    iget-object v0, v0, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mAudioPlaybackCallback:Lcom/android/server/display/ExternalDisplayStatsService$1;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->unregisterAudioPlaybackCallback(Landroid/media/AudioManager$AudioPlaybackCallback;)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
