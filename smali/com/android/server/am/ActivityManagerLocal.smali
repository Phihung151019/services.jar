.class public interface abstract Lcom/android/server/am/ActivityManagerLocal;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# virtual methods
.method public abstract bindSdkSandboxService(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract bindSdkSandboxService(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context$BindServiceFlags;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract bindSdkSandboxService(Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/lang/String;Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract canAllowWhileInUsePermissionInFgs(IILjava/lang/String;)Z
.end method

.method public abstract canStartForegroundService(IILjava/lang/String;)Z
.end method

.method public abstract killSdkSandboxClientAppProcess(Landroid/os/IBinder;)V
.end method

.method public abstract startSdkSandboxService(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopSdkSandboxService(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract tempAllowWhileInUsePermissionInFgs(IJ)V
.end method
