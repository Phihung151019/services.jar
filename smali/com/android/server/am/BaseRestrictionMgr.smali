.class public final Lcom/android/server/am/BaseRestrictionMgr;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mRestrictActivityTheme:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/am/BaseRestrictionMgr$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BaseRestrictionMgr$1;-><init>(Lcom/android/server/am/BaseRestrictionMgr;)V

    iput-object v0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mRestrictActivityTheme:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5

    iget-object p0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isBlockAssociatedActivity(Landroid/content/pm/ActivityInfo;)Z
    .locals 6

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/BaseRestrictionMgr;->mRestrictActivityTheme:Ljava/util/ArrayList;

    iget v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object p0, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    return v4

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    if-gt v5, v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to analyze taskAffinity: ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseRestrictionMgr"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    aget-object p1, v0, v4

    invoke-virtual {p0, v2, p1, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v4

    :cond_2
    return v1
.end method

.method public final isLauncherableApp(ILjava/lang/String;)Z
    .locals 5

    const-string v0, "BaseRestrictionMgr"

    const-string v1, "AutoRun Policy isLauncherableApp -- Not launcherable system package:"

    const-string v2, "AutoRun Policy isLauncherableApp -- Not launcherable 3rd party package:"

    const-string/jumbo v3, "com.baidu.searchbox_samsung"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    const-string/jumbo v3, "com.bst.floatingmsgproxy"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/BaseRestrictionMgr;->getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_3

    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :goto_0
    const-string/jumbo p1, "isLaucherableApp exception="

    invoke-static {p0, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return v4
.end method

.method public final isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    invoke-virtual/range {p3 .. p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const-string v9, "Blocked by policy:"

    const-string v10, "BaseRestrictionMgr"

    const/4 v11, -0x1

    if-nez v1, :cond_1

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_0

    const-string v0, " -- Caller is null!!"

    invoke-static {v6, v9, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_0
    move/from16 v16, v11

    goto/16 :goto_11

    :cond_1
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    sget-boolean v12, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v12, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v12, v12, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-nez v12, :cond_2

    :goto_0
    const/16 v19, 0x1

    goto/16 :goto_6

    :cond_2
    const/4 v12, 0x4

    if-eq v6, v12, :cond_4

    sget-boolean v14, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v14, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v14, v14, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-nez v14, :cond_4

    sget-boolean v14, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v14, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v14, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz v14, :cond_3

    sget-object v14, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v14, v14, Lcom/android/server/am/mars/util/UidStateMgr;->mUidGoneList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {v14, v15}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_0

    :cond_3
    sget-boolean v14, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez v14, :cond_4

    sget-object v14, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    move/from16 v15, p6

    invoke-virtual {v14, v15}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_0

    :cond_4
    const-string/jumbo v14, "startService"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string/jumbo v15, "bindService"

    move/from16 v16, v11

    const-string/jumbo v11, "android"

    const/16 v17, 0x0

    if-nez v14, :cond_6

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_1

    :cond_5
    const/16 v19, 0x1

    goto/16 :goto_5

    :cond_6
    :goto_1
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_7
    move-object/from16 v14, v17

    :goto_2
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    if-nez v14, :cond_9

    sget-object v12, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter$AccessibilityAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;

    const/16 v19, 0x1

    iget-object v13, v12, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    monitor-enter v13

    :try_start_0
    iget-object v12, v12, Lcom/android/server/am/mars/filter/filter/AccessibilityAppFilter;->mEnabledAccessibilityPackages:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v0, "isShouldSkipCase: Enable AccessibilityService callee = "

    invoke-static {v0, v7, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v19

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_8
    :try_start_1
    monitor-exit v13

    goto :goto_4

    :goto_3
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_9
    const/16 v19, 0x1

    :goto_4
    sget-boolean v12, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v12, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v13

    if-eqz v13, :cond_a

    sget-object v13, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v13, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    move/from16 v3, v19

    invoke-virtual {v13, v3, v7, v1, v14}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v3, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    const/4 v13, 0x7

    invoke-virtual {v3, v13, v7, v1, v14}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v12, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v0, "isShouldSkipCase: Foreground caller and callee = "

    invoke-static {v0, v7, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    return v19

    :goto_5
    const-string/jumbo v3, "com.sec.android.app.samsungapps"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :goto_6
    return v19

    :cond_b
    invoke-virtual {v0, v8, v7}, Lcom/android/server/am/BaseRestrictionMgr;->isLauncherableApp(ILjava/lang/String;)Z

    move-result v3

    const/4 v12, 0x0

    if-eqz v3, :cond_13

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/BaseRestrictionMgr;->isLauncherableApp(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string/jumbo v3, "system"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v13, "is Blocked by Policy:"

    if-nez v3, :cond_c

    const-string/jumbo v3, "com.sec."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string/jumbo v3, "com.samsung."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    const/16 v19, 0x1

    goto :goto_8

    :cond_d
    const-string/jumbo v3, "com.baidu.BaiduMap"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "com.baidu.searchbox_samsung"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "com.baidu.netdisk_ss"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_7

    :cond_e
    :try_start_2
    iget-object v3, v0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v12, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_7

    :cond_f
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v19, 0x1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_10

    goto :goto_7

    :cond_10
    iget-object v0, v0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    if-ltz v0, :cond_11

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_12

    const-string/jumbo v0, "isSamsungService -- SystemPackage:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isSystemPackage exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseRestrictionMgr"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_7
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_20

    const-string v0, " -- Caller is not samsung!!"

    invoke-static {v6, v13, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :goto_8
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_12

    const-string/jumbo v0, "isSamsungService -- SamsungService:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_9
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v0, v0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_20

    const-string v0, " -- isCalmMode!!"

    invoke-static {v6, v13, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v16

    :cond_13
    const/16 v19, 0x1

    :cond_14
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    :cond_15
    move-object/from16 v0, v17

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string/jumbo v2, "android.accounts.AccountAuthenticator"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string/jumbo v2, "binderCallingUid"

    const/16 v3, 0x3e8

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_16

    const-string/jumbo v0, "isShouldBlockCase: block AccountAuthenticator"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_16
    const-string/jumbo v2, "isShouldBlockCase: not block AccountAuthenticator"

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_18

    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-virtual {v2, v3, v7, v1, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :goto_a
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_20

    const-string v0, " -- should Block cases!!"

    invoke-static {v6, v9, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v16

    :cond_18
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-wide/16 v13, 0x0

    const/4 v0, 0x4

    if-eq v6, v0, :cond_1b

    const-string v0, "AutoRun Policy isJobSchedulerPackage -- package = "

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    if-eqz v2, :cond_19

    move-object/from16 v4, p3

    :try_start_3
    invoke-interface {v2, v4, v13, v14, v8}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-eqz v2, :cond_1a

    const-string/jumbo v7, "android.permission.BIND_JOB_SERVICE"

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v2, :cond_1a

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move/from16 v2, v19

    goto :goto_c

    :catch_1
    move-exception v0

    move/from16 v2, v19

    goto :goto_b

    :catch_2
    move-exception v0

    move v2, v12

    :goto_b
    const-string/jumbo v7, "isJobSchedulerPackage exception="

    invoke-static {v7, v0, v10}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_c

    :cond_19
    move-object/from16 v4, p3

    :cond_1a
    move v2, v12

    :goto_c
    if-eqz v2, :cond_1c

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_20

    const-string v0, " -- JobSchedulerPackage!!"

    invoke-static {v6, v9, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_1b
    move-object/from16 v4, p3

    :cond_1c
    const-string v0, "AutoRun Policy isSyncManagerPackage -- package = "

    :try_start_5
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string/jumbo v2, "android.content.SyncAdapter"

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v2, :cond_1d

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move/from16 v2, v19

    goto :goto_e

    :catch_3
    move-exception v0

    move/from16 v2, v19

    goto :goto_d

    :catch_4
    move-exception v0

    move v2, v12

    goto :goto_d

    :cond_1d
    move v2, v12

    goto :goto_e

    :goto_d
    const-string/jumbo v5, "isSyncManagerPackage exception="

    invoke-static {v0, v5, v10}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    if-eqz v2, :cond_1e

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_20

    const-string v0, " -- SyncManagerPackage!!"

    invoke-static {v6, v9, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_1e
    const-string v0, "AutoRun Policy isBindNotificationListenerPackage -- package = "

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    if-eqz v2, :cond_1f

    :try_start_7
    invoke-interface {v2, v4, v13, v14, v8}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-eqz v2, :cond_1f

    const-string/jumbo v5, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    if-eqz v1, :cond_1f

    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    move/from16 v13, v19

    goto :goto_10

    :catch_5
    move-exception v0

    move/from16 v13, v19

    goto :goto_f

    :catch_6
    move-exception v0

    move v13, v12

    :goto_f
    const-string/jumbo v1, "isBindNotificationListenerPackage exception="

    invoke-static {v1, v0, v10}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_10

    :cond_1f
    move v13, v12

    :goto_10
    if-eqz v13, :cond_21

    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_20

    const-string v0, " -- isBindNotificationListenerPackage!!"

    invoke-static {v6, v9, v0, v10}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    :goto_11
    return v16

    :cond_21
    return v3
.end method

.method public final isRestrictedPackage(Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;IZLandroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z
    .locals 23

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p4

    move/from16 v3, p6

    const/4 v8, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-boolean v7, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    const/4 v9, 0x0

    if-eqz p5, :cond_0

    const-string/jumbo v7, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "com.samsung.android.game.gos"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v8

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    if-eqz v7, :cond_1

    return v8

    :cond_1
    const-string/jumbo v7, "com.google.android.projection.gearhead"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "bindService"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7, v3, v0, v9}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(ILjava/lang/String;Z)V

    :cond_2
    if-eqz p5, :cond_4

    const-string/jumbo v7, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v10

    :try_start_0
    iget-object v11, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v11, v0, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v11, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    invoke-virtual {v7, v11, v9}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v10

    goto :goto_3

    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :goto_3
    sget-object v10, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v10

    :try_start_1
    sget-object v7, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    iget-boolean v7, v7, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v11, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    if-eqz v11, :cond_5

    iget-object v11, v11, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-eqz v11, :cond_5

    iget-object v7, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v7, v0, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_44

    :cond_5
    :goto_4
    sget-boolean v7, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v7, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v11, v7, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    const/4 v13, -0x1

    if-eqz v11, :cond_a

    iget-object v7, v7, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v7, v7, Lcom/android/server/am/FreecessPkgMap;->mUserIdMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    if-eqz v7, :cond_a

    move v11, v9

    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v11, v15, :cond_9

    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/FreecessPkgStatus;

    iget-object v15, v14, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    if-nez v15, :cond_6

    const-string v15, "BaseRestrictionMgr"

    move/from16 v16, v9

    const-string v9, "Abnomal case in isRestrictedPackage package name is null"

    invoke-static {v15, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    move/from16 v16, v9

    iget v9, v14, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    if-eq v3, v9, :cond_8

    if-ne v3, v13, :cond_7

    goto :goto_7

    :cond_7
    :goto_6
    add-int/2addr v11, v8

    move/from16 v9, v16

    goto :goto_5

    :cond_8
    :goto_7
    iget v7, v14, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    move v11, v8

    :goto_8
    move v15, v11

    goto :goto_9

    :cond_9
    move/from16 v16, v9

    move v7, v13

    move v9, v7

    move/from16 v11, v16

    goto :goto_8

    :cond_a
    move/from16 v16, v9

    move v7, v13

    move v9, v7

    move/from16 v11, v16

    move v15, v11

    const/4 v14, 0x0

    :goto_9
    if-nez v11, :cond_f

    sget-object v12, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v5, v12, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    if-eqz v5, :cond_f

    iget-object v5, v5, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, v12, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v5, v5, Lcom/android/server/am/MARsPkgMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-eqz v5, :cond_f

    move/from16 v19, v8

    move/from16 v12, v16

    :goto_a
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v12, v8, :cond_e

    invoke-virtual {v5, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MARsPackageInfo;

    iget-object v13, v8, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    if-nez v13, :cond_b

    const-string v8, "BaseRestrictionMgr"

    const-string v13, "Abnomal case in isRestrictedPackage package name is null"

    invoke-static {v8, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v0

    const/4 v0, -0x1

    goto :goto_b

    :cond_b
    iget v13, v8, Lcom/android/server/am/MARsPackageInfo;->userId:I

    move-object/from16 v21, v0

    if-eq v3, v13, :cond_d

    const/4 v0, -0x1

    if-ne v3, v0, :cond_c

    goto :goto_c

    :cond_c
    :goto_b
    add-int/lit8 v12, v12, 0x1

    move v13, v0

    move-object/from16 v0, v21

    goto :goto_a

    :cond_d
    :goto_c
    iget v7, v8, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget-boolean v0, v8, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    move v9, v13

    move/from16 v11, v19

    :goto_d
    move v13, v0

    goto :goto_10

    :cond_e
    move-object/from16 v21, v0

    :goto_e
    move v0, v13

    goto :goto_f

    :cond_f
    move-object/from16 v21, v0

    move/from16 v19, v8

    goto :goto_e

    :goto_f
    const/4 v8, 0x0

    goto :goto_d

    :goto_10
    if-lez v7, :cond_10

    const-string/jumbo v0, "bindService"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v7}, Lcom/android/server/am/MARsPolicyManager;->isUidBindTempRestricted(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "BaseRestrictionMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is temperary restricted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    return v19

    :cond_10
    if-nez v11, :cond_13

    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    if-eqz v0, :cond_12

    if-eqz p5, :cond_11

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_11
    const-string v0, ""

    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object/from16 v6, p9

    move/from16 v5, p10

    move/from16 v3, p11

    move-object v2, v4

    move-object v4, v0

    move-object/from16 v0, v21

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    :cond_12
    monitor-exit v10

    return v16

    :cond_13
    move-object/from16 v0, v21

    if-eqz p7, :cond_16

    if-eqz v8, :cond_16

    if-nez v15, :cond_16

    sget-object v1, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    iget-boolean v1, v1, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    if-eqz v1, :cond_15

    if-eqz p5, :cond_14

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :goto_12
    move-object v4, v1

    goto :goto_13

    :cond_14
    const-string v1, ""

    goto :goto_12

    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v6, p9

    move/from16 v5, p10

    move/from16 v3, p11

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    :cond_15
    monitor-exit v10

    return v16

    :cond_16
    if-eqz v8, :cond_19

    iget-object v1, v8, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-nez v1, :cond_19

    if-nez v14, :cond_19

    sget-object v1, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    iget-boolean v1, v1, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    if-eqz v1, :cond_18

    if-eqz p5, :cond_17

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :goto_14
    move-object v4, v1

    goto :goto_15

    :cond_17
    const-string v1, ""

    goto :goto_14

    :goto_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v6, p9

    move/from16 v5, p10

    move/from16 v3, p11

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    :cond_18
    monitor-exit v10

    return v16

    :cond_19
    move-object/from16 v1, p2

    move-object/from16 v4, p4

    move-object v12, v0

    if-eqz v15, :cond_1a

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v9, v12}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(ILjava/lang/String;)I

    move-result v13

    :cond_1a
    if-eqz v8, :cond_1b

    iget-object v3, v8, Lcom/android/server/am/MARsPackageInfo;->appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v3, :cond_1b

    iget v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    move/from16 v22, v7

    move v7, v3

    move/from16 v3, v22

    goto :goto_16

    :cond_1b
    move v3, v7

    if-eqz v15, :cond_1c

    const/4 v7, 0x4

    goto :goto_16

    :cond_1c
    move/from16 v7, v16

    :goto_16
    if-eqz v8, :cond_1d

    iget v5, v8, Lcom/android/server/am/MARsPackageInfo;->curLevel:I

    goto :goto_17

    :cond_1d
    if-eqz v15, :cond_1e

    if-nez v13, :cond_1e

    const/4 v5, 0x2

    goto :goto_17

    :cond_1e
    move/from16 v5, v19

    :goto_17
    if-eqz v14, :cond_1f

    iget-boolean v0, v14, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v0, :cond_1f

    const/16 v5, 0x8

    :cond_1f
    if-eqz v15, :cond_20

    if-eqz v14, :cond_20

    iget-object v0, v14, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v0, v0, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    if-eqz v0, :cond_20

    move/from16 v0, v19

    goto :goto_18

    :cond_20
    move/from16 v0, v16

    :goto_18
    const v20, 0x20000008

    move/from16 v14, v19

    if-eq v5, v14, :cond_28

    const/4 v14, 0x2

    if-eq v5, v14, :cond_27

    const/4 v14, 0x3

    if-eq v5, v14, :cond_25

    const/4 v0, 0x4

    if-eq v5, v0, :cond_23

    const/4 v0, 0x7

    if-eq v5, v0, :cond_22

    const/16 v0, 0x8

    if-eq v5, v0, :cond_21

    move/from16 v14, v16

    goto :goto_1b

    :cond_21
    const v0, 0x501c0888

    :goto_19
    move v14, v0

    goto :goto_1b

    :cond_22
    const v0, 0x1000112

    goto :goto_19

    :cond_23
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_24

    const/16 v0, 0x2220

    goto :goto_19

    :cond_24
    const v0, 0x401c0888

    goto :goto_19

    :cond_25
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_26

    const v0, 0x14148110

    goto :goto_19

    :cond_26
    const v14, -0x2fe3f778

    goto :goto_1b

    :cond_27
    sget-boolean v5, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v14

    if-nez v14, :cond_29

    :cond_28
    :goto_1a
    move/from16 v14, v20

    goto :goto_1b

    :cond_29
    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v5

    if-eqz v5, :cond_26

    if-eqz v0, :cond_26

    goto :goto_1a

    :goto_1b
    const/high16 v0, 0x4000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v0

    if-eqz v0, :cond_2a

    move/from16 v11, v16

    :cond_2a
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_2b

    sget-object v5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v0, v5, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2b

    move/from16 v11, v16

    goto :goto_1c

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw v0

    :cond_2b
    :goto_1c
    if-eqz v11, :cond_58

    const-string/jumbo v0, "activity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v18, 0x2

    and-int/lit8 v0, v14, 0x2

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    :goto_1d
    const/4 v2, 0x1

    :goto_1e
    const/16 v5, 0x8

    goto :goto_1f

    :cond_2c
    move/from16 v0, v16

    goto :goto_1d

    :cond_2d
    move/from16 v0, v16

    move v2, v0

    goto :goto_1e

    :goto_1f
    and-int/lit8 v11, v14, 0x8

    if-eqz v11, :cond_31

    if-eqz v12, :cond_2f

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v5, :cond_2e

    const-string/jumbo v5, "isSelfIntent :"

    invoke-virtual {v5, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v11, "BaseRestrictionMgr"

    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v5, 0x1

    goto :goto_20

    :cond_2f
    move/from16 v5, v16

    :goto_20
    if-nez v5, :cond_31

    move-object/from16 v5, p8

    invoke-virtual {v6, v5}, Lcom/android/server/am/BaseRestrictionMgr;->isBlockAssociatedActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    if-nez v11, :cond_30

    sget-object v11, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v11, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    move/from16 p3, v0

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {v11, v1, v14, v0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_21

    :cond_30
    move/from16 p3, v0

    :goto_21
    const-string v0, "BaseRestrictionMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Block activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --- isBlockAssociatedActivity which is not started by itself."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p2

    move/from16 v11, p3

    move-object v0, v6

    move/from16 v2, v16

    const/16 v17, 0x1

    :goto_22
    move v6, v3

    goto/16 :goto_36

    :cond_31
    move/from16 p3, v0

    :cond_32
    move-object/from16 v1, p2

    move/from16 v11, p3

    move/from16 v17, v2

    move-object v0, v6

    move/from16 v2, v16

    goto :goto_22

    :cond_33
    const-string/jumbo v0, "startService"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string/jumbo v0, "bindService"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_34
    move-object/from16 v1, p2

    move v6, v3

    goto/16 :goto_31

    :cond_35
    const-string/jumbo v0, "provider"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    and-int/lit16 v0, v14, 0x100

    if-eqz v0, :cond_36

    move-object/from16 v1, p2

    move-object/from16 v5, p5

    move-object v0, v6

    move v6, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v11

    if-lez v11, :cond_37

    const/4 v0, 0x1

    goto :goto_23

    :cond_36
    move-object/from16 v1, p2

    move v6, v3

    :cond_37
    move/from16 v0, v16

    :goto_23
    and-int/lit16 v3, v14, 0x200

    if-eqz v3, :cond_39

    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    const/4 v11, 0x1

    :goto_24
    const/16 v17, 0x1

    goto :goto_25

    :cond_38
    move v11, v0

    goto :goto_24

    :cond_39
    move v11, v0

    move/from16 v17, v16

    :goto_25
    and-int/lit16 v0, v14, 0x800

    if-eqz v0, :cond_3b

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v2

    if-lez v2, :cond_3a

    const/4 v11, 0x1

    :cond_3a
    const/16 v17, 0x1

    move-object/from16 v0, p0

    :goto_26
    move/from16 v2, v16

    goto/16 :goto_36

    :cond_3b
    move-object/from16 v0, p0

    move-object/from16 v4, p4

    goto :goto_26

    :cond_3c
    move-object/from16 v1, p2

    move v6, v3

    const-string/jumbo v0, "broadcast"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    if-eqz p5, :cond_4d

    and-int/lit16 v0, v14, 0x2000

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    :goto_27
    const/4 v2, 0x1

    goto :goto_28

    :cond_3d
    move/from16 v0, v16

    goto :goto_27

    :cond_3e
    move/from16 v0, v16

    move v2, v0

    :goto_28
    const v3, 0x8000

    and-int/2addr v3, v14

    if-eqz v3, :cond_40

    const-string/jumbo v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_29
    const/4 v3, 0x1

    goto :goto_2a

    :cond_3f
    move v2, v0

    move/from16 v0, v16

    goto :goto_29

    :cond_40
    move v3, v2

    move v2, v0

    move/from16 v0, v16

    :goto_2a
    const/high16 v5, 0x80000

    and-int/2addr v5, v14

    if-eqz v5, :cond_44

    if-eqz v12, :cond_42

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v3, :cond_41

    const-string/jumbo v3, "isSelfIntent :"

    invoke-virtual {v3, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "BaseRestrictionMgr"

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const/4 v3, 0x1

    goto :goto_2b

    :cond_42
    move/from16 v3, v16

    :goto_2b
    if-eqz v3, :cond_43

    const/4 v2, 0x1

    :cond_43
    const/4 v3, 0x1

    :cond_44
    const/high16 v5, 0x100000

    and-int/2addr v5, v14

    if-eqz v5, :cond_46

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v5, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    const/4 v11, 0x3

    invoke-virtual {v5, v11, v12, v1, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    const/4 v2, 0x1

    :cond_45
    const/4 v3, 0x1

    :cond_46
    const/high16 v5, 0x40000

    and-int/2addr v5, v14

    if-eqz v5, :cond_49

    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v3

    if-eqz v3, :cond_48

    if-eqz v1, :cond_47

    sget-object v3, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    iget-object v3, v3, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    const-string v3, "Call from Current Launcher app :"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "BaseRestrictionMgr"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_2c

    :cond_47
    move/from16 v3, v16

    :goto_2c
    if-eqz v3, :cond_48

    const/4 v2, 0x1

    :cond_48
    const/4 v3, 0x1

    :cond_49
    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v5, v14

    if-eqz v5, :cond_4c

    if-eqz v1, :cond_4a

    const-string/jumbo v3, "com.samsung.android.app.spage"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    const-string v3, "Call from spage app :"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "BaseRestrictionMgr"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_2d

    :cond_4a
    move/from16 v3, v16

    :goto_2d
    if-eqz v3, :cond_4b

    move v2, v0

    const/4 v11, 0x1

    const/16 v17, 0x1

    :goto_2e
    move-object/from16 v0, p0

    goto/16 :goto_36

    :cond_4b
    const/16 v17, 0x1

    move v11, v2

    :goto_2f
    move v2, v0

    goto :goto_2e

    :cond_4c
    move v11, v2

    move/from16 v17, v3

    goto :goto_2f

    :cond_4d
    :goto_30
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    move v11, v2

    goto/16 :goto_36

    :cond_4e
    const-string/jumbo v0, "backup"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/high16 v0, 0x1000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_51

    goto :goto_30

    :cond_4f
    const-string/jumbo v0, "job"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    const-string/jumbo v0, "alarm"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_50
    const/high16 v0, -0x80000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_51

    goto :goto_30

    :cond_51
    move-object/from16 v0, p0

    move/from16 v2, v16

    move v11, v2

    move/from16 v17, v11

    goto :goto_36

    :goto_31
    and-int/lit8 v0, v14, 0x10

    if-eqz v0, :cond_53

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v11

    if-lez v11, :cond_52

    const/4 v0, 0x1

    :goto_32
    const/4 v3, 0x1

    goto :goto_33

    :cond_52
    move/from16 v0, v16

    goto :goto_32

    :cond_53
    move/from16 v0, v16

    move v3, v0

    :goto_33
    and-int/lit8 v4, v14, 0x20

    if-eqz v4, :cond_55

    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->isForegroundPackage(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    const/4 v11, 0x1

    :goto_34
    const/16 v17, 0x1

    goto :goto_35

    :cond_54
    move v11, v0

    goto :goto_34

    :cond_55
    move v11, v0

    move/from16 v17, v3

    :goto_35
    and-int/lit16 v0, v14, 0x80

    if-eqz v0, :cond_3b

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BaseRestrictionMgr;->isPolicyBlockedPackage(Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v2

    if-lez v2, :cond_56

    const/4 v11, 0x1

    :cond_56
    move/from16 v2, v16

    const/16 v17, 0x1

    :goto_36
    if-nez v17, :cond_57

    const/16 v19, 0x1

    :goto_37
    const/4 v14, 0x1

    goto :goto_38

    :cond_57
    move/from16 v19, v11

    goto :goto_37

    :goto_38
    xor-int/lit8 v11, v19, 0x1

    move v3, v2

    :goto_39
    move v2, v11

    goto :goto_3a

    :cond_58
    move-object v0, v6

    move v6, v3

    move/from16 v3, v16

    goto :goto_39

    :goto_3a
    if-nez v2, :cond_59

    if-eqz v3, :cond_59

    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    move/from16 v5, v16

    const/4 v14, 0x1

    invoke-virtual {v3, v14, v9, v12, v5}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(IILjava/lang/String;Z)V

    :cond_59
    sget-object v3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v5, v3, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v5, :cond_5d

    invoke-virtual {v3, v9, v12}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    if-nez v2, :cond_5d

    const-string/jumbo v0, "broadcast"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_5a
    move-object v0, v4

    :goto_3b
    invoke-virtual {v3, v9, v12, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "BaseRestrictionMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hostingType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is allowed by freecess, caller is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    iget-boolean v0, v0, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    if-eqz v0, :cond_5c

    if-eqz p5, :cond_5b

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_5b
    const-string v0, ""

    :goto_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object/from16 v6, p9

    move/from16 v5, p10

    move/from16 v3, p11

    move-object v2, v4

    move-object v4, v0

    move-object v0, v12

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    :cond_5c
    monitor-exit v10

    const/16 v16, 0x0

    return v16

    :cond_5d
    move-object v11, v4

    if-nez v2, :cond_5e

    if-eqz v8, :cond_5e

    iget-boolean v3, v8, Lcom/android/server/am/MARsPackageInfo;->isSCPMTarget:Z

    if-nez v3, :cond_5e

    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    const/16 v4, 0x1000

    invoke-virtual {v3, v4, v8}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    :cond_5e
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v3, :cond_5f

    if-eqz v2, :cond_5f

    const-string v3, "BaseRestrictionMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", userid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", hostingType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is Restricted by policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " caller is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    sget-object v3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    monitor-enter v3

    :try_start_6
    iget-boolean v4, v3, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    monitor-exit v3

    if-nez v4, :cond_67

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    if-eqz v3, :cond_67

    iget-object v0, v0, Lcom/android/server/am/BaseRestrictionMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne v0, v9, :cond_67

    sget-object v0, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    const-string/jumbo v0, "activity"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto/16 :goto_40

    :cond_60
    const/4 v14, 0x1

    if-ne v13, v14, :cond_61

    if-eqz v15, :cond_61

    goto/16 :goto_40

    :cond_61
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Lcom/android/server/am/mars/util/UidStateMgr$UidStateMgrHolder;->INSTANCE:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-virtual {v0, v6}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result v0

    if-eqz v0, :cond_62

    goto/16 :goto_40

    :cond_62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v2, :cond_64

    if-nez v13, :cond_63

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    move-object v3, v1

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateAppStartUpInfoMsgToDBHandler(Ljava/lang/String;ZLjava/lang/String;J)V

    move-object v0, v1

    move v7, v2

    move-object/from16 v1, p2

    goto :goto_41

    :cond_63
    move-object/from16 v1, p2

    goto :goto_40

    :cond_64
    move-object v0, v12

    if-eqz v13, :cond_65

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    move-object v12, v0

    sget-object v0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    move-object/from16 v3, p2

    move-object v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/mars/database/MARsDBHandler;->sendUpdateAppStartUpInfoMsgToDBHandler(Ljava/lang/String;ZLjava/lang/String;J)V

    move-object v0, v1

    move-object v1, v3

    :goto_3d
    move v7, v2

    goto :goto_3e

    :cond_65
    move-object/from16 v1, p2

    goto :goto_3d

    :goto_3e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "markAppStartUpResult: auto run "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v13, :cond_66

    const-string/jumbo v3, "off"

    goto :goto_3f

    :cond_66
    const-string/jumbo v3, "on"

    :goto_3f
    const-string v6, " case : "

    const-string v8, " start process "

    invoke-static {v2, v3, v6, v1, v8}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MARsComponentTracker"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_67
    :goto_40
    move v7, v2

    move-object v0, v12

    :goto_41
    sget-object v2, Lcom/android/server/am/mars/database/MARsComponentTracker$MARsComponentTrackerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsComponentTracker;

    iget-boolean v2, v2, Lcom/android/server/am/mars/database/MARsComponentTracker;->isEnabledCT:Z

    if-eqz v2, :cond_69

    if-nez v7, :cond_69

    if-eqz p5, :cond_68

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    :goto_42
    move-object v4, v2

    goto :goto_43

    :cond_68
    const-string v2, ""

    goto :goto_42

    :goto_43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object/from16 v6, p9

    move/from16 v5, p10

    move/from16 v3, p11

    move-object v2, v11

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/mars/database/MARsComponentTracker;->sendCTInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    :cond_69
    return v7

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :goto_44
    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method
