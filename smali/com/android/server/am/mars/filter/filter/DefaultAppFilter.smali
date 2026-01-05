.class public final Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDefaultAppChangedReceiver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;

.field public mDefaultAppChangedReceiverRegistered:Z

.field public mDefaultAssistantPackage:Ljava/lang/String;

.field public mDefaultDialerPackage:Ljava/lang/String;

.field public mDefaultHomePackage:Ljava/lang/String;

.field public mDefaultIMEList:Landroid/util/ArrayMap;

.field public mDefaultSmsPackage:Ljava/lang/String;

.field public mDefaultWalletPackage:Ljava/lang/String;

.field public mInputMethodObserver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;

.field public mInputMethodObserverRegistered:Z

.field public mSecureFolderEnabled:Z

.field public mSecureFolderUserId:I


# virtual methods
.method public final deInit()V
    .locals 4

    const-string/jumbo v0, "MARs:DefaultAppFilter"

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserverRegistered:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserverRegistered:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "IllegalArgumentException occurred in unregisterDefaultIMEContentObserver()"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiverRegistered:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;

    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiverRegistered:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "IllegalArgumentException occurred in unregisterDefaultAppChangedReceiver()"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 1

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    const/16 p3, 0xb

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p2

    if-ne p1, p2, :cond_4

    if-eqz p4, :cond_0

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultDialerPackage:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return p3

    :cond_0
    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultSmsPackage:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return p3

    :cond_1
    if-eqz p4, :cond_2

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return p3

    :cond_2
    if-eqz p4, :cond_3

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAssistantPackage:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return p3

    :cond_3
    if-eqz p4, :cond_4

    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultWalletPackage:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    return p3

    :cond_4
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    sget-boolean p2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p2, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->getScreenOnState()Z

    move-result p2

    if-nez p2, :cond_5

    return v0

    :cond_5
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    return p3

    :cond_6
    return v0
.end method

.method public final getDefaultIMEPackage(I)V
    .locals 4

    if-gez p1, :cond_0

    const-string/jumbo p0, "getDefaultIMEPackage called with invalid userId : "

    const-string/jumbo v0, "MARs:DefaultAppFilter"

    invoke-static {p1, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    aget-object v0, v2, v1

    :cond_1
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    if-eqz v2, :cond_4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultIMEList:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    sget-boolean p0, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    :cond_4
    return-void
.end method

.method public final getSubUserIdsDefaultIMEPackage()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getSubUserIdsDefaultIMEPackage get userId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MARs:DefaultAppFilter"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultIMEPackage(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 11

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultDialerPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultSmsPackage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultIMEPackage(I)V

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getSubUserIdsDefaultIMEPackage()V

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultHomePackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxId(IZ)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderUserId:I

    if-nez p1, :cond_2

    const/16 v3, 0x96

    if-lt v0, v3, :cond_2

    const/16 v3, 0xa0

    if-gt v0, v3, :cond_2

    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->getDefaultIMEPackage(I)V

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mSecureFolderEnabled:Z

    :cond_3
    :goto_1
    new-instance v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$RoleObserver;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$RoleObserver;-><init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)V

    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserverRegistered:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "default_input_method"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$1;

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mInputMethodObserverRegistered:Z

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiverRegistered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    const-string/jumbo v2, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    const-string/jumbo v3, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-static {v0, v2, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v7

    new-instance v5, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;-><init>(Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;)V

    iput-object v5, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiver:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppChangedReceiver;

    iget-object v4, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;->mDefaultAppChangedReceiverRegistered:Z

    return-void
.end method
