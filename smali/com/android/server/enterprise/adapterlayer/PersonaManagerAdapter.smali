.class public final Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;


# static fields
.field public static sInstance:Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

.field public mUserMgr:Landroid/os/UserManager;


# virtual methods
.method public final getFocusedUserWithActivityManager()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    const-string/jumbo v1, "PersonaManagerAdapter"

    const-string/jumbo v2, "getFocusedUserWithActivityManager() failed. so return owner id"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    return-object p0
.end method
