.class public final Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/locales/LocaleManagerBackupHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    iget-object p2, p2, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->deleteStagedDataLocked(I)V

    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "LocaleManagerBkpHelper"

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Failed to commit data!"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo v0, "The profile is not existed in the persisted info"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;->this$0:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-static {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->-$$Nest$mremoveArchivedPackagesForUser(Lcom/android/server/locales/LocaleManagerBackupHelper;I)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "LocaleManagerBkpHelper"

    const-string p2, "Exception in user monitor."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method
