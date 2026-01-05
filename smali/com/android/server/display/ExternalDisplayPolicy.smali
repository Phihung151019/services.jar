.class public final Lcom/android/server/display/ExternalDisplayPolicy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z

.field static final ENABLE_ON_CONNECT:Ljava/lang/String; = "persist.sys.display.enable_on_connect.external"


# instance fields
.field public mBlockDisplayWhileUserSwitch:Z

.field public final mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

.field public final mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

.field public final mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field public final mInjector:Lcom/android/server/display/DisplayManagerService$1;

.field public mIsBootCompleted:Z

.field public final mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

.field public volatile mStatus:I

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ExternalDisplayPolicy"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mStatus:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/DisplayManagerService$1;

    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v0, p1, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    iget-object v0, p1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v0, p1, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, p1, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    iget-object v0, p1, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iput-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    iput-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    return-void
.end method

.method public static isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p0

    iget p0, p0, Landroid/view/DisplayInfo;->type:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final handleExternalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 8

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "ExternalDisplayPolicy"

    const-string/jumbo p1, "handleExternalDisplayConnectedLocked called for non-external display"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mIsBootCompleted:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    iget v2, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    iget v2, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iget-object v4, v1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    monitor-enter v4

    :try_start_0
    iget-object v5, v1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-eq v5, v0, :cond_3

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_3
    iget-object v6, v1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v6, v1, Lcom/android/server/display/ExternalDisplayStatsService;->mExternalDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v0, :cond_4

    iget-object v4, v1, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-object v4, v4, Lcom/android/server/display/ExternalDisplayStatsService$Injector;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    new-instance v7, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1, v0}, Lcom/android/server/display/ExternalDisplayStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/ExternalDisplayStatsService;I)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v0, v1, Lcom/android/server/display/ExternalDisplayStatsService;->mInjector:Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    iget-boolean v4, v1, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x326

    invoke-static {v0, v3, v6, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZ)V

    sget-boolean v0, Lcom/android/server/display/ExternalDisplayStatsService;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "ExternalDisplayStatsService"

    const-string/jumbo v3, "logStateConnected displayId="

    const-string v4, " countOfExternalDisplays="

    const-string v7, " currentState="

    invoke-static {v2, v6, v3, v4, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state=2 mIsExternalDisplayUsedForAudio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v1, Lcom/android/server/display/ExternalDisplayStatsService;->mIsExternalDisplayUsedForAudio:Z

    invoke-static {v0, v2, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    goto :goto_1

    :goto_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableDisplayContentModeManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    if-eqz v0, :cond_6

    const-string v0, "ExternalDisplayPolicy"

    const-string v2, "External display is enabled by default, bypassing user consent."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/DisplayManagerService$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->setEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayAllowed()Z

    move-result v0

    if-nez v0, :cond_7

    const-string p1, "ExternalDisplayPolicy"

    const-string/jumbo v0, "handleExternalDisplayConnectedLocked: External display can not be used because it is currently not allowed."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/DisplayManagerService$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    sget-boolean p0, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p0, :cond_8

    const-string p0, "ExternalDisplayPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleExternalDisplayConnectedLocked complete displayId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-static {v0, p1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_8
    return-void
.end method

.method public isExternalDisplayAllowed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final setExternalDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .locals 2

    invoke-static {p1}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    const-string v1, "ExternalDisplayPolicy"

    if-nez v0, :cond_0

    const-string/jumbo p0, "setExternalDisplayEnabledLocked called for non external display"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo p1, "setExternalDisplayEnabledLocked: External display can not be enabled because it is currently not allowed."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/server/display/ExternalDisplayPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/notifications/DisplayNotificationManager;)V

    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mBlockDisplayWhileUserSwitch:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    return-void
.end method
