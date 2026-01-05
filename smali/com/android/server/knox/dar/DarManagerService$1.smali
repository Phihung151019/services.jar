.class public final Lcom/android/server/knox/dar/DarManagerService$1;
.super Landroid/app/UserSwitchObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/DarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/DarManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/dar/DarManagerService$1;->this$0:Lcom/android/server/knox/dar/DarManagerService;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLockedBootComplete(I)V
    .locals 3

    const-string/jumbo v0, "onLockedBootComplete: "

    const-string v1, "DarManagerService"

    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService$1;->this$0:Lcom/android/server/knox/dar/DarManagerService;

    iget-object v0, v0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    const/16 v1, 0x78

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService$1;->this$0:Lcom/android/server/knox/dar/DarManagerService;

    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
