.class public final Lcom/android/server/am/ForegroundServiceDelegation;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mOptions:Landroid/app/ForegroundServiceDelegationOptions;


# direct methods
.method public constructor <init>(Landroid/app/ForegroundServiceDelegationOptions;Landroid/content/ServiceConnection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ForegroundServiceDelegation;->mBinder:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/am/ForegroundServiceDelegation;->mOptions:Landroid/app/ForegroundServiceDelegationOptions;

    iput-object p2, p0, Lcom/android/server/am/ForegroundServiceDelegation;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method
