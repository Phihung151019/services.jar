.class public final Lcom/android/server/ExtendedEthernetServiceImpl$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/EthernetManager$InterfaceStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ExtendedEthernetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$2;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    return-void
.end method


# virtual methods
.method public final onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .locals 2

    const-string/jumbo p1, "onInterfaceStateChanged "

    const-string v0, ", state: "

    const-string v1, ", conf: "

    invoke-static {p3, p2, p1, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "ExtendedEthernetServiceImpl"

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$2;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    move p1, p4

    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$mupdateEthCableConnectNotification(Lcom/android/server/ExtendedEthernetServiceImpl;Z)V

    return-void

    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$mupdateEthCableConnectNotification(Lcom/android/server/ExtendedEthernetServiceImpl;Z)V

    return-void
.end method
