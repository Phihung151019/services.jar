.class public final Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHomeApplianceBackupEnabledUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "accessibility_settings_home_appliance_backup_enabled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->mHomeApplianceBackupEnabledUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "accessibility_settings_home_appliance_backup_enabled"

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {p2, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHomeApplianceBackupTargetSettingsObserver:Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHomeApplianceBackupTargetSettingsObserver:Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHomeApplianceBackupTargetSettingsObserver:Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupEnabledObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHomeApplianceBackupTargetSettingsObserver:Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$HomeApplianceBackupTargetSettingsObserver;->register(Landroid/content/ContentResolver;)V

    :cond_2
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
