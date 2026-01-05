.class public final Lcom/android/server/display/ExternalDisplayStatsService;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAudioPlaybackCallback:Lcom/android/server/display/ExternalDisplayStatsService$1;

.field public final mExternalDisplayStates:Landroid/util/SparseIntArray;

.field public final mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

.field public mInteractiveExternalDisplays:I

.field public final mInteractivityReceiver:Lcom/android/server/display/ExternalDisplayStatsService$2;

.field public mIsExternalDisplayUsedForAudio:Z

.field public mIsInitialized:Z


# direct methods
.method public static -$$Nest$mlogStateAfterAudioSinkChanged(Lcom/android/server/display/ExternalDisplayStatsService;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-boolean v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x326

    const/16 v2, 0xa

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    sget-boolean p1, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "ExternalDisplayStatsService"

    const-string/jumbo v1, "logStateAfterAudioSinkChanged countOfExternalDisplays)="

    const-string v2, " mIsExternalDisplayUsedForAudio="

    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-static {p1, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ExternalDisplayStatsService"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/ExternalDisplayStatsService$Injector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/android/server/display/ExternalDisplayStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/ExternalDisplayStatsService$1;-><init>(Lcom/android/server/display/ExternalDisplayStatsService;)V

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mAudioPlaybackCallback:Lcom/android/server/display/ExternalDisplayStatsService$1;

    new-instance v0, Lcom/android/server/display/ExternalDisplayStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/ExternalDisplayStatsService$2;-><init>(Lcom/android/server/display/ExternalDisplayStatsService;)V

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractivityReceiver:Lcom/android/server/display/ExternalDisplayStatsService$2;

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    return-void
.end method


# virtual methods
.method public isExternalDisplayUsedForAudio()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    return p0
.end method

.method public isInteractiveExternalDisplays()Z
    .locals 0

    iget p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInteractiveExternalDisplays:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final logExternalDisplayError(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-boolean v2, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x326

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    sget-boolean v0, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ExternalDisplayStatsService"

    const-string/jumbo v2, "logExternalDisplayError countOfExternalDisplays="

    const-string v3, " errorType="

    const-string v4, " mIsExternalDisplayUsedForAudio="

    invoke-static {v1, p1, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-static {v0, p1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
