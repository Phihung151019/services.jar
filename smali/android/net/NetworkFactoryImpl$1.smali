.class public final Landroid/net/NetworkFactoryImpl$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/NetworkProvider$NetworkOfferCallback;


# instance fields
.field public final synthetic this$0:Landroid/net/NetworkFactoryImpl;


# direct methods
.method public constructor <init>(Landroid/net/NetworkFactoryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkFactoryImpl$1;->this$0:Landroid/net/NetworkFactoryImpl;

    return-void
.end method


# virtual methods
.method public final onNetworkNeeded(Landroid/net/NetworkRequest;)V
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkFactoryImpl$1;->this$0:Landroid/net/NetworkFactoryImpl;

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleAddRequest(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public final onNetworkUnneeded(Landroid/net/NetworkRequest;)V
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkFactoryImpl$1;->this$0:Landroid/net/NetworkFactoryImpl;

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryImpl;->handleRemoveRequest(Landroid/net/NetworkRequest;)V

    return-void
.end method
