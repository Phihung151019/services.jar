.class public final Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBinderDeathReceiver:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

.field public final mCommnInfo:Landroid/blockchain/BlockchainTZServiceCommnInfo;

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/blockchain/BlockchainTZService;


# direct methods
.method public constructor <init>(Lcom/android/server/blockchain/BlockchainTZService;Landroid/blockchain/BlockchainTZServiceConfig;Landroid/blockchain/BlockchainTZServiceCommnInfo;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->this$0:Lcom/android/server/blockchain/BlockchainTZService;

    iput-object p3, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mCommnInfo:Landroid/blockchain/BlockchainTZServiceCommnInfo;

    iput p4, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPid:I

    iput-object p5, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPackageName:Ljava/lang/String;

    new-instance p1, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;-><init>(Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;)V

    iput-object p1, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mBinderDeathReceiver:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;

    iget-object p0, p2, Landroid/blockchain/BlockchainTZServiceConfig;->mClient:Landroid/os/IBinder;

    iput-object p0, p1, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    const/4 p2, 0x0

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method
