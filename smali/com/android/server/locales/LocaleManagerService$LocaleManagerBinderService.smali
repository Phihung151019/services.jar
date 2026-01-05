.class public final Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;
.super Landroid/app/ILocaleManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locales/LocaleManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/locales/LocaleManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-direct {p0}, Landroid/app/ILocaleManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method public final getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;
    .locals 0

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getSystemLocales()Landroid/os/LocaleList;
    .locals 2

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/locales/LocaleManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    iget-object v2, v1, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    invoke-direct {v0, v1, v2}, Lcom/android/server/locales/LocaleManagerShellCommand;-><init>(Landroid/app/ILocaleManager;Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;Z)V
    .locals 7

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;ZI)V

    return-void
.end method

.method public final setOverrideLocaleConfig(Ljava/lang/String;ILandroid/app/LocaleConfig;)V
    .locals 12

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    const-string/jumbo v0, "i18n.feature.dynamic_locales_change"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;-><init>(I)V

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v10, "setOverrideLocaleConfig"

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    move v7, p2

    invoke-virtual/range {v4 .. v11}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.SET_APP_SPECIFIC_LOCALECONFIG"

    const-string/jumbo v4, "setOverrideLocaleConfig"

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    const/4 p1, 0x4

    :try_start_2
    iput p1, v1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/locales/LocaleManagerService;->setOverrideLocaleConfigUnchecked(Ljava/lang/String;ILandroid/app/LocaleConfig;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget v4, v1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mTargetUid:I

    iget v5, v1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mNumLocales:I

    iget-boolean v6, v1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mOverrideRemoved:Z

    iget-boolean v7, v1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsResConfig:Z

    iget-boolean v8, v1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsPrevConfig:Z

    iget v9, v1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    const/16 v2, 0x247

    invoke-static/range {v2 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIZZZI)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    iget v4, v1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mTargetUid:I

    iget v5, v1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mNumLocales:I

    iget-boolean v6, v1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mOverrideRemoved:Z

    iget-boolean v7, v1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsResConfig:Z

    iget-boolean v8, v1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsPrevConfig:Z

    iget v9, v1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    const/16 v2, 0x247

    iget v3, v1, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mCallingUid:I

    invoke-static/range {v2 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIZZZI)V

    throw p0
.end method
