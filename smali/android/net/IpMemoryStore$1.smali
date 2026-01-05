.class public final Landroid/net/IpMemoryStore$1;
.super Landroid/net/IIpMemoryStoreCallbacks$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Landroid/net/IpMemoryStore;


# direct methods
.method public constructor <init>(Landroid/net/IpMemoryStore;)V
    .locals 0

    iput-object p1, p0, Landroid/net/IpMemoryStore$1;->this$0:Landroid/net/IpMemoryStore;

    invoke-direct {p0}, Landroid/net/IIpMemoryStoreCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "b24ee617afb80799cb35b6241f5847d786c649f3"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/16 p0, 0xb

    return p0
.end method

.method public final onIpMemoryStoreFetched(Landroid/net/IIpMemoryStore;)V
    .locals 0

    iget-object p0, p0, Landroid/net/IpMemoryStore$1;->this$0:Landroid/net/IpMemoryStore;

    invoke-static {p0}, Landroid/net/IpMemoryStore;->-$$Nest$fgetmService(Landroid/net/IpMemoryStore;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
