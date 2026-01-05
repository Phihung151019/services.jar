.class public final Lcom/android/server/connectivity/Vpn$Connection;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mService:Landroid/os/IBinder;


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$Connection;->mService:Landroid/os/IBinder;

    return-void
.end method
