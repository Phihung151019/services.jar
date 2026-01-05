.class public final Lcom/android/server/enterprise/plm/impl/BindServiceImpl;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAliveEvent:I

.field public mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

.field public final mContext:Landroid/content/Context;

.field public mDeathEvent:I

.field public mObserver:Lcom/android/server/enterprise/plm/ProcessAdapter;

.field public final mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/plm/context/ProcessContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mObserver:Lcom/android/server/enterprise/plm/ProcessAdapter;

    return-void
.end method


# virtual methods
.method public final getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getServiceName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;-><init>(Lcom/android/server/enterprise/plm/impl/BindServiceImpl;)V

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/plm/impl/BindServiceImpl$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mConnectionHelper:Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    return-object p0
.end method

.method public final hasPackage(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "Utils"

    const-string/jumbo v1, "found package "

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const-string/jumbo p0, "enabled"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string/jumbo p0, "disabled"

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo p0, "failed to find package "

    invoke-static {p0, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public final setPackageEnabled(Ljava/lang/String;Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "Utils"

    const-string/jumbo v1, "set package "

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p2, " enabled"

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p2, " disabled"

    :goto_1
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v2, p2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final start()Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getServiceName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Utils"

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 v6, 0x4

    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2

    array-length v2, v0

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_2

    aget-object v7, v0, v6

    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "found service "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string/jumbo v6, "enabled"

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const-string/jumbo v6, "disabled"

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v0, "failed to find service "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    :goto_3
    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getServiceName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "failed to find "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BindServiceImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/BindServiceImpl;->getConnectionHelper()Lcom/android/server/enterprise/plm/impl/ConnectionHelper;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/plm/impl/ConnectionHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/plm/impl/ConnectionHelper;Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method
