.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/ServiceConnection;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Lcom/android/server/am/ForegroundServiceDelegation;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ServiceConnection;Landroid/content/ComponentName;Lcom/android/server/am/ForegroundServiceDelegation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$0:Landroid/content/ServiceConnection;

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/am/ForegroundServiceDelegation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$0:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$1:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda4;->f$2:Lcom/android/server/am/ForegroundServiceDelegation;

    iget-object p0, p0, Lcom/android/server/am/ForegroundServiceDelegation;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v1, p0}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method
