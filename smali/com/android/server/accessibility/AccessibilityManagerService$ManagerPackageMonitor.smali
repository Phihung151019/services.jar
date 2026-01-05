.class public Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-void
.end method


# virtual methods
.method public final onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.PM.onHandleForceStop"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "intent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";packages="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v5, ";uid="

    const-string v6, ";doit="

    invoke-static {p3, p1, v5, v6, v4}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    if-eq p3, v1, :cond_1

    monitor-exit p1

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p3

    if-nez p4, :cond_2

    iget-object p0, p3, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda6;

    const/4 p4, 0x5

    invoke-direct {p3, p4, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    monitor-exit p1

    return p0

    :cond_2
    iget-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p4, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onPackagesForceStoppedLocked([Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p3, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    :cond_3
    monitor-exit p1

    return v2

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.PM.onPackageRemoved"

    const-string/jumbo v4, "packageName="

    const-string v5, ";uid="

    invoke-static {p2, v4, p1, v5}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v0, v1, :cond_1

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monPackageRemovedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;)V

    monitor-exit p2

    return-void

    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.PM.onPackageUpdateFinished"

    const-string/jumbo v4, "packageName="

    const-string v5, ";uid="

    invoke-static {p2, v4, p1, v5}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->parseAccessibilityServiceInfos(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, p2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq p2, v4, :cond_1

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {v3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object p2

    iget-object v3, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    const/4 v5, 0x2

    invoke-direct {v4, p1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    iget-object v3, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;

    const/4 v6, 0x3

    invoke-direct {v5, p1, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v5}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iget-object v5, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5, p2, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v3, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    :cond_5
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p2, p1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V

    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSomePackagesChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/32 v1, 0x8000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-string v3, "AccessibilityManagerService.PM.onSomePackagesChanged"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->parseAccessibilityServiceInfos(I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v0, v4, :cond_1

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    if-nez v0, :cond_2

    const-string p0, "AccessibilityManagerService"

    const-string/jumbo v0, "onSomePackagesChanged: service not initialized, skip the callback."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    :cond_3
    monitor-exit v3

    return-void

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
