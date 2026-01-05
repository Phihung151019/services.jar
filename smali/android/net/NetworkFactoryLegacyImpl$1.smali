.class public final Landroid/net/NetworkFactoryLegacyImpl$1;
.super Landroid/net/NetworkProvider;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Landroid/net/NetworkFactoryLegacyImpl;


# direct methods
.method public constructor <init>(Landroid/net/NetworkFactoryLegacyImpl;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/NetworkFactoryLegacyImpl$1;->this$0:Landroid/net/NetworkFactoryLegacyImpl;

    invoke-direct {p0, p2, p3, p4}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onNetworkRequestWithdrawn(Landroid/net/NetworkRequest;)V
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl$1;->this$0:Landroid/net/NetworkFactoryLegacyImpl;

    invoke-virtual {p0, p1}, Landroid/net/NetworkFactoryLegacyImpl;->handleRemoveRequest$1(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method public final onNetworkRequested(Landroid/net/NetworkRequest;II)V
    .locals 0

    iget-object p0, p0, Landroid/net/NetworkFactoryLegacyImpl$1;->this$0:Landroid/net/NetworkFactoryLegacyImpl;

    invoke-virtual {p0, p1, p2, p3}, Landroid/net/NetworkFactoryLegacyImpl;->handleAddRequest(Landroid/net/NetworkRequest;II)V

    return-void
.end method
