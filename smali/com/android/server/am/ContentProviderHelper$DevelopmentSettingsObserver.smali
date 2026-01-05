.class public final Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBugreportStorageProvider:Landroid/content/ComponentName;

.field public final mUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/am/ContentProviderHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ContentProviderHelper;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ContentProviderHelper;

    iget-object v0, p1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "development_settings_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mUri:Landroid/net/Uri;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.shell"

    const-string/jumbo v3, "com.android.shell.BugreportStorageProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mBugreportStorageProvider:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->onChange()V

    return-void
.end method


# virtual methods
.method public final onChange()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ContentProviderHelper;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ContentProviderHelper;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mBugreportStorageProvider:Landroid/content/ComponentName;

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->onChange()V

    :cond_0
    return-void
.end method
