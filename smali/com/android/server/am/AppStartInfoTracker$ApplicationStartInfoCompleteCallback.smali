.class public final Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/am/AppStartInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppStartInfoTracker;Landroid/app/IApplicationStartInfoCompleteListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    iput-object p2, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

    iput p3, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mUid:I

    :try_start_0
    invoke-interface {p2}, Landroid/app/IApplicationStartInfoCompleteListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->this$0:Lcom/android/server/am/AppStartInfoTracker;

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mCallback:Landroid/app/IApplicationStartInfoCompleteListener;

    iget p0, p0, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->mUid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/am/AppStartInfoTracker;->removeStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;IZ)V

    return-void
.end method
