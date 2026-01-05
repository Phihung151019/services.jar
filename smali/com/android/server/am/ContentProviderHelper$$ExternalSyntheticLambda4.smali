.class public final synthetic Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ContentProviderHelper;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ContentProviderHelper;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/ContentProviderHelper;

    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/am/ProcessRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/ContentProviderHelper;

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/am/ProcessRecord;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-wide/32 v3, 0x40008

    invoke-interface {v2, p1, v3, v4, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz p1, :cond_a

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_a

    aget-object v6, p1, v5

    iget-object v7, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_1

    iget-boolean v7, v6, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move v7, v4

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v8

    :goto_2
    iget v9, v6, Landroid/content/pm/ProviderInfo;->flags:I

    iget-object v10, v0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v10, 0x20000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    iget-object v9, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v6, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget v12, v6, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-static {v9, v10, v11, v12}, Lcom/android/server/am/ActivityManagerService;->isSingleton(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    :goto_3
    move v9, v8

    goto :goto_4

    :cond_3
    move v9, v4

    :goto_4
    if-eqz v9, :cond_5

    if-nez v1, :cond_4

    goto :goto_5

    :cond_4
    move v9, v4

    goto :goto_6

    :cond_5
    :goto_5
    move v9, v8

    :goto_6
    iget-object v10, v6, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v10

    iget-object v11, v6, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    if-eqz v11, :cond_7

    iget-object v12, v6, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v12, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_7

    :cond_6
    move v8, v4

    :cond_7
    :goto_7
    if-eqz v7, :cond_9

    if-eqz v9, :cond_9

    if-eqz v10, :cond_8

    if-eqz v8, :cond_9

    :cond_8
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/app/IApplicationThread$Delegator;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    :cond_a
    return-void
.end method
