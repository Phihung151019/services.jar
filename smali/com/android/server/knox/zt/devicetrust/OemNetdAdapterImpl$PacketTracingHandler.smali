.class public Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DISABLE:I = 0x2

.field public static final ENABLE:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;->this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;->this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    iget-object p1, v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->disablePacketTracing(Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;->this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    iget v1, v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mNetworkIndex:I

    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->hasEthernetHeader()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->updateNetworkInterfaceData(IZ)V

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$PacketTracingHandler;->this$0:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    iget-object p1, v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl$NetworkInfo;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;->enablePacketTracing(Ljava/lang/String;)I

    return-void
.end method
