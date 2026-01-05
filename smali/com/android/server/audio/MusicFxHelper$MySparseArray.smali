.class public final Lcom/android/server/audio/MusicFxHelper$MySparseArray;
.super Landroid/util/SparseArray;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MusicFxHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MusicFxHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method


# virtual methods
.method public final put(ILcom/android/server/audio/MusicFxHelper$PackageSessions;)V
    .locals 11

    const-string/jumbo v1, "com.android.musicfx"

    const-string v2, " UID "

    const-string/jumbo v3, "registered to observer with UID "

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-string v4, "AS.MusicFxHelper"

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    iget-object v5, v5, Lcom/android/server/audio/MusicFxHelper;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "RemoteException with getPackageProcessState: "

    invoke-static {v5, v0, v4}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    const/16 v0, 0x14

    :goto_0
    const/4 v5, 0x6

    if-le v0, v5, :cond_0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.musicfx.KeepAliveService"

    invoke-virtual {v5, v1, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/audio/MusicFxHelper;->mIsBound:Z

    iget-object v7, v5, Lcom/android/server/audio/MusicFxHelper;->mContext:Landroid/content/Context;

    iget-object v5, v5, Lcom/android/server/audio/MusicFxHelper;->mMusicFxBindConnection:Lcom/android/server/audio/MusicFxHelper$2;

    invoke-static {}, Lcom/android/server/audio/MusicFxHelper;->getCurrentUserId()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v1, v5, v6, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    const-string/jumbo v1, "bindService to com.android.musicfx"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "com.android.musicfx procState "

    invoke-static {v0, v1, v4}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    iget-object v1, v0, Lcom/android/server/audio/MusicFxHelper;->mUidObserverToken:Landroid/os/IBinder;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    iget-object v6, v1, Lcom/android/server/audio/MusicFxHelper;->mEffectUidObserver:Lcom/android/server/audio/MusicFxHelper$1;

    iget-object v9, v1, Lcom/android/server/audio/MusicFxHelper;->mPackageName:Ljava/lang/String;

    filled-new-array {p1}, [I

    move-result-object v10

    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-interface/range {v5 .. v10}, Landroid/app/IActivityManager;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/audio/MusicFxHelper;->mUidObserverToken:Landroid/os/IBinder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    iget-object v3, v1, Lcom/android/server/audio/MusicFxHelper;->mUidObserverToken:Landroid/os/IBinder;

    iget-object v1, v1, Lcom/android/server/audio/MusicFxHelper;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v3, v1, p1}, Landroid/app/IActivityManager;->addUidToObserver(Landroid/os/IBinder;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " add to observer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    const-string/jumbo v1, "RemoteException with UID observer add/register: "

    invoke-static {v1, v0, v4}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic put(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/server/audio/MusicFxHelper$PackageSessions;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->put(ILcom/android/server/audio/MusicFxHelper$PackageSessions;)V

    return-void
.end method

.method public final remove(I)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "AS.MusicFxHelper"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    iget-object v3, v2, Lcom/android/server/audio/MusicFxHelper;->mUidObserverToken:Landroid/os/IBinder;

    iget-object v2, v2, Lcom/android/server/audio/MusicFxHelper;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v3, v2, p1}, Landroid/app/IActivityManager;->removeUidFromObserver(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "RemoteException with removeUidFromObserver: "

    invoke-static {v2, v0, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    iget-object v0, v0, Lcom/android/server/audio/MusicFxHelper;->mEffectUidObserver:Lcom/android/server/audio/MusicFxHelper$1;

    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string/jumbo v0, "RemoteException with unregisterUidObserver: "

    invoke-static {v0, p1, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/audio/MusicFxHelper;->mUidObserverToken:Landroid/os/IBinder;

    iget-boolean v0, p1, Lcom/android/server/audio/MusicFxHelper;->mIsBound:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/audio/MusicFxHelper;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/audio/MusicFxHelper;->mMusicFxBindConnection:Lcom/android/server/audio/MusicFxHelper$2;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/audio/MusicFxHelper;->mIsBound:Z

    const-string/jumbo p0, "last session closed, unregister UID observer, and unbind com.android.musicfx"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
